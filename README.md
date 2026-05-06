# Salesforce Project Management App

A full-stack Salesforce-based Project Management and Resource Allocation application designed for professional services organizations to manage projects, consultants, assignments, skills, time tracking, billing metrics, and organizational security.

# Overview

This application helps service-based organizations manage the complete lifecycle of projects and consulting resources inside Salesforce.

The system supports:
- Project planning and execution
- Resource staffing and allocation
- Skill management
- Weekly time tracking
- Financial and billing metrics
- Role-based access control
- Executive reporting

The application was built using Salesforce platform capabilities including:
- Custom Objects
- Apex Classes and Triggers
- Validation Rules
- Roll-Up Summary Fields
- Lookup and Master-Detail Relationships
- Profiles and Security Model
- Sharing Rules and Role Hierarchy

---

# Business Problem

Professional services organizations often struggle with:
- Tracking consultant assignments
- Managing billable and non-billable hours
- Monitoring project profitability
- Matching consultant skills to projects
- Maintaining secure access across departments
- Generating executive-level utilization metrics

This application centralizes all operations into a single Salesforce solution.

---

# Tech Stack

| Technology | Usage |
|---|---|
| Salesforce Platform | Core application platform |
| Apex | Business logic and automation |
| SOQL | Data querying |
| Validation Rules | Data integrity |
| Roll-Up Summary Fields | Financial and utilization calculations |
| Profiles & Sharing Rules | Security model |
| Git & GitHub | Version control |

---

# Core Features

## Project Management
- Create and manage projects
- Track project stages and status
- Monitor budgets and billable hours
- Store project notes and lifecycle details

## Resource Management
- Maintain consultant profiles
- Track experience and regions
- Manage hourly cost rates
- Associate consultants with projects

## Assignment Management
- Assign resources to projects
- Track assignment duration and status
- Calculate planned revenue and margins
- Monitor utilization

## Timecard Tracking
- Weekly consultant time logging
- Billable vs non-billable tracking
- Invoice-related tracking
- Time aggregation and reporting

## Skill Management
- Associate skills with consultants
- Skill categorization and ratings
- Dependent picklists for skill specialization
- Validation rules for required skill types

## Security Model
- Role hierarchy implementation
- Organization-wide defaults
- Sharing rules
- Profile-based field accessibility
- Business-unit-based data access

---

# Data Model

## Standard Objects Used
- Account
- Contact

## Custom Objects
- Project__c
- Resource__c
- Assignment__c
- Skill__c
- Timecard__c

---

# Object Relationships

| Parent Object | Child Object | Relationship Type |
|---|---|---|
| Account | Project | Lookup |
| Project | Timecard | Master-Detail |
| Resource | Timecard | Master-Detail |
| Project | Assignment | Master-Detail |
| Resource | Assignment | Master-Detail |
| Resource | Skill | Lookup |
| Contact | Resource | Lookup |

---

# Security Implementation

The application includes multiple user roles:

- Services Sales Representative
- Staffing Coordinator
- Project Manager
- Consultant
- Accounts Receivable
- Vice President

Implemented security concepts:
- Role hierarchy
- Sharing rules
- Object-level security
- Field-level security
- Organization-wide defaults

Examples:
- Consultants cannot create Assignments
- Finance fields are hidden from Consultants
- Executives have organization-wide visibility

---

# Roll-Up Summary Metrics

Implemented executive-level reporting metrics including:
- Total Billable Hours Logged
- Total Billable Hours Invoiced
- Total Non-Billable Hours
- Total Planned Revenue
- Total Assigned Hours

These metrics help management monitor:
- Resource utilization
- Revenue forecasting
- Project profitability
- Billing efficiency

---

# Apex and Automation

The project includes:
- Apex classes
- Apex triggers
- SOQL-based business logic
- Validation rules
- Formula fields

Examples:
- Account-related automation
- Contact analytics services
- Assignment calculations
- Skill validation logic

---

# Validation Rules

Implemented validations include:
- Mandatory skill type validation
- Data consistency enforcement
- Assignment and timecard validation

---

# Repository Structure

```text
force-app/
 └── main/
      └── default/
           ├── classes/
           ├── triggers/
           ├── objects/
           ├── permissionsets/
           └── layouts/
```

---

# Future Improvements

Potential future enhancements:
- Lightning Web Components (LWC)
- Approval processes
- Automated invoicing
- Dashboard analytics
- REST API integrations
- CI/CD pipeline setup
- Test coverage improvements

---

# Screenshots

Add screenshots here:
- Object relationships
- Project dashboard
- Resource records
- Timecard management
- Security model
- Reports and dashboards

---

# Author

Satvik Jain

MCA Student | Salesforce Developer | Java Full Stack Enthusiast

GitHub: https://github.com/satvikjain13

---

# Learning Outcomes

This project helped strengthen understanding of:
- Salesforce data modeling
- Metadata management
- Security architecture
- Apex development
- Role hierarchy implementation
- Real-world CRM customization
- Git and GitHub integration
