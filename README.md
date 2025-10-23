# Store Database Management System (MySQL)

A normalized MySQL schema for retail operations with entities for stores, staffs, customers, products, brands, categories, stocks, orders, and order_items. Includes ready-to-run DDL, sample data/queries, and a complete BRD with solved stakeholder Q&A.

## Features
- Relational design with primary/foreign keys, unique constraints, and indexes
- Inventory tracking via `stocks` linked to `stores` and `products`
- Order management with header (`orders`) and line items (`order_items`) supporting pricing and discounts
- Sample analytics: sales, inventory levels, and customer insights
- BRD pack covering scope, entities, constraints, and reporting use cases

## Repository Structure
- `ER-Diagram.jpg` — Visual schema reference
- `table_creation.sql` — DDL for tables, constraints, and indexes
- `solutions.sql` — Sample data, queries, views/procedures, and reports
- `docs/Business-Requirement-Document-Store-Database.pdf` — BRD (Part 1)
- `docs/Business-Requirement-Document-Part-2.pdf` — BRD (Part 2, Q&A)

## Quick Start
1. Create database and tables:
   - Run `table_creation.sql` in MySQL 8.x (CLI or MySQL Workbench).
2. Seed and explore:
   - Execute `solutions.sql` for sample data and example reports.
3. Understand the model:
   - Review `ER-Diagram.jpg` and the BRD documents in `docs/`.

## Requirements
- MySQL 8.x (recommended)
- MySQL client or GUI (MySQL Shell/Workbench)

## Example Commands
-- Create schema and objects
SOURCE table_creation.sql;

-- Load samples and run reports
SOURCE solutions.sql;
