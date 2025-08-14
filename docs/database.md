# Database

Welcome to our comprehensive database documentation section. Here you'll find guides on database design, optimization, performance tuning, and management for both SQL and NoSQL systems.

## Database Fundamentals

### Database Design Principles
- Normalization and denormalization strategies
- Entity-relationship modeling
- Schema design best practices
- Data integrity and constraints

### Database Normalization Forms

Database normalization is the process of organizing data to reduce redundancy and improve data integrity. Here's a detailed explanation of each normal form with practical examples:

#### First Normal Form (1NF)
**Definition:** A table is in 1NF if:
- Each column contains atomic (indivisible) values
- Each column contains values of a single type
- Each column has a unique name
- The order in which data is stored doesn't matter

**Example - Before 1NF (Violation):**
```
Student Table:
StudentID | Name     | Subjects
1         | John Doe | Math, Science, English
2         | Jane Smith | History, Math
```

**Example - After 1NF (Compliant):**
```
Student Table:
StudentID | Name       | Subject
1         | John Doe   | Math
1         | John Doe   | Science
1         | John Doe   | English
2         | Jane Smith | History
2         | Jane Smith | Math
```

#### Second Normal Form (2NF)
**Definition:** A table is in 2NF if:
- It is in 1NF
- All non-key attributes are fully functionally dependent on the primary key

**Example - Before 2NF (Violation):**
```
Student_Subject Table:
StudentID | SubjectID | StudentName | SubjectName | Grade
1         | 101       | John Doe    | Math        | A
1         | 102       | John Doe    | Science     | B
2         | 101       | Jane Smith  | Math        | A
```
*Problem: StudentName depends only on StudentID, SubjectName depends only on SubjectID*

**Example - After 2NF (Compliant):**
```
Students Table:
StudentID | StudentName
1         | John Doe
2         | Jane Smith

Subjects Table:
SubjectID | SubjectName
101       | Math
102       | Science

Enrollments Table:
StudentID | SubjectID | Grade
1         | 101       | A
1         | 102       | B
2         | 101       | A
```

#### Third Normal Form (3NF)
**Definition:** A table is in 3NF if:
- It is in 2NF
- No non-key attribute is transitively dependent on the primary key

**Example - Before 3NF (Violation):**
```
Students Table:
StudentID | StudentName | DepartmentID | DepartmentName | DepartmentHead
1         | John Doe    | 10           | Computer Sci   | Dr. Smith
2         | Jane Smith  | 20           | Mathematics    | Dr. Johnson
```
*Problem: DepartmentName and DepartmentHead depend on DepartmentID, not StudentID*

**Example - After 3NF (Compliant):**
```
Students Table:
StudentID | StudentName | DepartmentID
1         | John Doe    | 10
2         | Jane Smith  | 20

Departments Table:
DepartmentID | DepartmentName | DepartmentHead
10           | Computer Sci   | Dr. Smith
20           | Mathematics    | Dr. Johnson
```

#### Boyce-Codd Normal Form (BCNF)
**Definition:** A table is in BCNF if:
- It is in 3NF
- For every functional dependency X → Y, X must be a superkey

**Example - Before BCNF (Violation):**
```
Course_Instructor Table:
CourseID | InstructorID | InstructorName | Room
CS101    | 1            | Prof. Brown    | A101
CS101    | 2            | Prof. Green    | B202
CS102    | 1            | Prof. Brown    | A101
```
*Problem: InstructorID → InstructorName, but InstructorID is not a superkey*

**Example - After BCNF (Compliant):**
```
Instructors Table:
InstructorID | InstructorName
1            | Prof. Brown
2            | Prof. Green

Course_Assignments Table:
CourseID | InstructorID | Room
CS101    | 1            | A101
CS101    | 2            | B202
CS102    | 1            | A101
```

#### Fourth Normal Form (4NF)
**Definition:** A table is in 4NF if:
- It is in BCNF
- It has no multi-valued dependencies

**Example - Before 4NF (Violation):**
```
Student_Skills_Hobbies Table:
StudentID | Skill        | Hobby
1         | Java         | Reading
1         | Java         | Swimming
1         | Python       | Reading
1         | Python       | Swimming
```
*Problem: Skills and Hobbies are independent multi-valued dependencies*

**Example - After 4NF (Compliant):**
```
Student_Skills Table:
StudentID | Skill
1         | Java
1         | Python

Student_Hobbies Table:
StudentID | Hobby
1         | Reading
1         | Swimming
```

#### Fifth Normal Form (5NF) / Project-Join Normal Form (PJNF)
**Definition:** A table is in 5NF if:
- It is in 4NF
- It cannot be decomposed into smaller tables without loss of information

**Example - Before 5NF (Violation):**
```
Supplier_Part_Project Table:
SupplierID | PartID | ProjectID
S1         | P1     | PR1
S1         | P2     | PR1
S2         | P1     | PR2
```
*If we can decompose this into three binary relationships without losing information*

**Example - After 5NF (Compliant):**
```
Supplier_Part Table:
SupplierID | PartID
S1         | P1
S1         | P2
S2         | P1

Part_Project Table:
PartID | ProjectID
P1     | PR1
P1     | PR2
P2     | PR1

Supplier_Project Table:
SupplierID | ProjectID
S1         | PR1
S2         | PR2
```

### Practical Normalization Guidelines

**When to Normalize:**
- OLTP systems where data consistency is crucial
- When you need to minimize data redundancy
- When insert/update/delete operations are frequent

**When to Denormalize:**
- Data warehousing and OLAP systems
- When read performance is more critical than storage
- When the cost of joins becomes prohibitive

**Best Practices:**
- Normalize to 3NF as a general rule
- Consider BCNF for critical business data
- Higher normal forms (4NF, 5NF) are less commonly needed
- Always consider the trade-offs between normalization and performance

### Performance Optimization
- Query optimization techniques
- Indexing strategies
- Database tuning and monitoring
- Connection pooling and caching

## Database Types

### Relational Databases
- **PostgreSQL**: Advanced features and optimization
- **MySQL**: Performance tuning and scaling
- **Oracle**: Enterprise features and administration
- **SQL Server**: T-SQL and advanced capabilities

### NoSQL Databases
- **MongoDB**: Document database patterns
- **Redis**: In-memory data structures
- **Cassandra**: Wide-column distributed database
- **Neo4j**: Graph database applications

## Advanced Topics

### Database Architecture
- Master-slave replication
- Sharding and partitioning
- Database clustering
- Backup and recovery strategies

### Database Security
- Access control and permissions
- Data encryption at rest and in transit
- SQL injection prevention
- Audit logging and compliance

### Modern Database Trends
- Cloud-native databases
- Serverless database solutions
- Database as a Service (DBaaS)
- Multi-model databases

## Tools and Technologies

### Database Administration
- Monitoring and alerting tools
- Backup and recovery solutions
- Migration utilities
- Performance profiling tools

### Development Tools
- Database version control
- Schema migration tools
- ORM frameworks and best practices
- Database testing strategies

---

*Explore our [SQL](data/sql.md) and [NoSQL](data/nosql.md) sections for specific database technologies!*
