
# EDI Baseline

- Issues are tracked 
## Overivew

EDI data is exchanged in text files. 
You should use delimiters which result in a text file that can be read in
any Unix editor. Specifically the backtick and carat symbols are not
included in the EDI character set, and therefore are not present in data
elements. EDI standards recommendations do not result in a viewable
file, and common industry practice produces corrupted files when
collisions occur between data and delimiters.

### Data Elements

The data element is the smallest named unit of information in the
standard. Data elements are identified as either simple or component. A
data element which occurs within a composite data structure is
identified as a component data element. A data element which is outside
the boundaries of a composite structure is a simple data element. The
distinction between simple and component elements is based on the
placement of the element in the set and not on the attributes of the
element.


### Composite Data Structures

The composite data structure is an intermediate unit of information in a
segment. The definition of a composite data structure consists of two or
more component data elements. In the actual data transmission the
composite may consist of one or more component data elements.


### Data Segment Structures

The data segment is an intermediate unit of related information in a
transaction set. Simple data elements and composite data structures are
the data parts of the segment. Each segment in a transmission starts
with the segment identifier, followed by at least one data element or
component structure, and ending with a segment terminator.

### Transaction Sets

The transaction set is a complete unit of information exchanged between
trading partners, representing a business document. Each transaction
starts with a header segment (ST) and ends with a trailer segment (SE).
At least one data segment is required between the header segment and the
trailer. Each segment in the transaction set ends with the segment
terminator 


### Additional Information


### Other Repos


### Contributors 


### License
Apache-2.0 / MIT