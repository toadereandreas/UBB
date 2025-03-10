#include "UI.h"
#include <string>
#include "SongValidator.h"
#include "RepositoryExceptions.h"

using namespace std;

void UI::printMenu()
{
	cout << endl;
	cout << "1 - Manage song repository."<<endl;
	cout << "2 - Manage playlist." << endl;
	cout << "0 - Exit." << endl;
}

void UI::printRepositoryMenu()
{
	cout << "Possible commands: " << endl;
	cout << "\t 1 - Add song." << endl;
	cout << "\t 2 - Remove song." << endl;
	cout << "\t 3 - Display all." << endl;
	cout << "\t 4 - Undo last song." << endl;
	cout << "\t 0 - Back." << endl;
}

void UI::printPlayListMenu()
{
	cout << "Possible commands: " << endl;
	cout << "\t 1 - Add song." << endl;
	cout << "\t 2 - Add songs by artist." << endl;
	cout << "\t 3 - Play." << endl;
	cout << "\t 4 - Next." << endl;
	cout << "\t 5 - Save playlist to file." << endl;
	cout << "\t 6 - Display playlist." << endl;
	cout << "\t 0 - Back." << endl;
}

void UI::addSongToRepo()
{
	cout << "Enter the artist: ";
	std::string artist;
	getline(cin, artist);
	cout << "Enter the title: ";
	std::string title;
	getline(cin, title);
	double minutes = 0, seconds = 0;
	cout << "Enter the duration: " << endl;
	cout << "\tMinutes: ";
	cin >> minutes;
	cin.ignore();
	cout << "\tSeconds: ";
	cin >> seconds;
	cin.ignore();
	cout << "Youtube link: ";
	std::string link;
	getline(cin, link);
	
	try
	{
		this->ctrl.addSongToRepository(artist, title, minutes, seconds, link);
	}
	catch (SongException& e)
	{
		for (auto s : e.getErrors())
			cout << s;
	}
	catch (RepositoryException& e)
	{
		cout << e.what() << endl;
	}
	catch (FileException& e)
	{
		cout << e.what() << endl;
	}
}

void UI::removeSongFromRepo()
{
	cout << "Enter the artist: ";
	std::string artist;
	getline(cin, artist);
	cout << "Enter the title: ";
	std::string title;
	getline(cin, title);

	try
	{
		this->ctrl.removeSongFromRepository(artist, title);
	}
	catch (RepositoryException& e)
	{
		cout << e.what() << endl;
	}
}

void UI::displayAllSongsRepo()
{
	vector<Song> songs = this->ctrl.getRepo().getSongs();
	if (songs.size() == 0)
	{
		cout << "There are no songs in the repository." << endl;
		return;
	}

	for (auto s: songs)
	{
		Duration d = s.getDuration();
		cout << s << endl;
	}
}

void UI::addSongToPlaylist()
{
	cout << "Enter the artist: ";
	std::string artist;
	getline(cin, artist);
	cout << "Enter the title: ";
	std::string title;
	getline(cin, title);
	
	// search for the song in the repository
	try
	{
		Song s = this->ctrl.getRepo().findByArtistAndTitle(artist, title);
		this->ctrl.addSongToPlaylist(s);
	}
	catch (InexistenSongException& e)
	{
		cout << e.what();
		cout << "Nothing will be added to the playlist." << endl;
	}
}

void UI::addAllSongsByArtistToPlaylist()
{
	cout << "Enter the artist: ";
	std::string artist;
	getline(cin, artist);

	this->ctrl.addAllSongsByArtistToPlaylist(artist);
}

void UI::savePlaylistToFile()
{
	std::string filename;
	cout << "Input the file name (absolute path): ";
	getline(cin, filename);

	try
	{
		this->ctrl.savePlaylist(filename);

		if (this->ctrl.getPlaylist() == nullptr)
		{
			cout << "Playlist cannot be displayed!" << endl;
			return;
		}
	}
	catch (FileException& e)
	{
		cout << e.what() << endl;
	}
}

void UI::undo() {
	this->ctrl.undo();
}

void UI::run()
{
	while (true)
	{
		UI::printMenu();
		int command{ 0 };
		cout << "Input the command: ";
		cin >> command;
		cin.ignore();
		if (command == 0)
			break;

		// repository management
		if (command == 1)
		{
			while (true)
			{
				UI::printRepositoryMenu();
				int commandRepo{0};
				cout << "Input the command: ";
				cin >> commandRepo;
				cin.ignore();
				if (commandRepo == 0)
					break;
				switch (commandRepo)
				{
				case 1:
					this->addSongToRepo();
					break;
				case 2:
					this->removeSongFromRepo();
					break;
				case 3:
					this->displayAllSongsRepo();
					break;
				case 4:
					this->undo();
					break;
				}
			}			
		}

		// playlist management
		if (command == 2)
		{
			while (true)
			{
				UI::printPlayListMenu();
				int commandPlaylist{0};
				cout << "Input the command: ";
				cin >> commandPlaylist;
				cin.ignore();
				if (commandPlaylist == 0)
					break;
				switch (commandPlaylist)
				{
				case 1:
					this->addSongToPlaylist();
					break;
				case 2:
					this->addAllSongsByArtistToPlaylist();
					break;
				case 3:
				{
					if (this->ctrl.getPlaylist()->isEmpty())
					{
						cout << "Nothing to play, the playlist is empty." << endl;
						continue;
					}
					this->ctrl.startPlaylist();
					Song s = this->ctrl.getPlaylist()->getCurrentSong();
					cout << "Now playing: " << s.getArtist() << " - " << s.getTitle() << endl;
					break;
				}
				case 4:
				{
					if (this->ctrl.getPlaylist()->isEmpty())
					{
						cout << "Nothing to play, the playlist is empty." << endl;
						continue;
					}
					this->ctrl.nextSongPlaylist();
					Song s = this->ctrl.getPlaylist()->getCurrentSong();
					cout << "Now playing: " << s.getArtist() << " - " << s.getTitle() << endl;
					break;
				}
				case 5:
				{
					this->savePlaylistToFile();
					break;
				}
				case 6:
				{
					this->ctrl.openPlaylist();
					break;
				}
				}
			}
		}
	}
}