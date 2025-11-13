import xml.etree.ElementTree as ET
tree = ET.parse('Maceda_XML_Parser_adn_File.xml')
root = tree.getroot()

"""
print(root.tag)
print(len(root))
"""

"""
first_book = root[0]
print(first_book.tag)
"""
"""
print(len(first_book))
"""

"""
for book in root:
    print("Title:", book.find('titleBooks').text)
    print("Genre:", book.find('genreBooks').text)
    print("Publisher ID:", book.find('idPublishers').text)
    print("Publish Date:", book.find('datePublishers').text)
    print("Volume:", book.find('Bookscol').text)
"""

"""
for book in root:
    print("Book ID:", book.attrib['idBooks'])
"""

"""
for genre in root.iter('genreBooks'):
    print(genre.text)
"""
