BEGIN TRANSACTION;
CREATE TABLE ACCOUNTS (DATE DATE, ACCOUNT_ID INTEGER PRIMARY KEY, SPOT_RATE NUMERIC, PAYMENTS_RECIEPTS NUMERIC, ACCOUNT_CASH_BALANCE NUMERIC, REALIZED_PROFIT_LOSS NUMERIC, PREMIUMS NUMERIC, COMMISSIONS NUMERIC, FEES NUMERIC, NEW_CASH_BALANCE NUMERIC, OPEN_TRADE_EQUITY NUMERIC, TOTAL_EQUITY NUMERIC, OPTION_MARKET_VALUE NUMERIC, LONG_OPTION_VALUE NUMERIC, SHORT_OPTION_VALUE NUMERIC, NET_LIQUIDATING_VALUE NUMERIC, INITIAL_MARGIN NUMERIC, MAINTENANCE_MARGIN NUMERIC, RISK_MAINTENANCE NUMERIC, RISK_INITIAL NUMERIC, COLLATERAL_USED NUMERIC, MARGIN_DEFAULT_EXCESS NUMERIC);
CREATE TABLE ACCOUNTS_MASTER (ACCOUNT_ID INTEGER PRIMARY KEY, ACCOUNT_NUMBER NUMERIC, ACCOUNT_DESCRIPTION TEXT);
CREATE TABLE CONTRACTS (MARKET_ID NUMERIC, EXPIRATION_DATE DATE, CONTRACT_ID INTEGER PRIMARY KEY, CONTRACT_DESCRIPTION TEXT);
CREATE TABLE LOG_EVENT_TYPES (EVENT_TYPE_ID INTEGER PRIMARY KEY, EVENT_TYPE_DESCRIPTION TEXT);
INSERT INTO LOG_EVENT_TYPES VALUES(1,'UPDATE');
INSERT INTO LOG_EVENT_TYPES VALUES(2,'INSERT');
INSERT INTO LOG_EVENT_TYPES VALUES(3,'DELETE');
CREATE TABLE LONG_TERM_HOLDINGS (CONTRACT_ID NUMERIC, DATE_BOUGHT DATE, QUANTITY NUMERIC, COST NUMERIC, CURRENT_PRICE NUMERIC, CURRENT_DATE DATE, HOLDING_ID INTEGER PRIMARY KEY, CURRENT_VALUE NUMERIC, PROFIT_LOSS NUMERIC);
CREATE TABLE MARKET_TYPES (MARKET_ID INTEGER PRIMARY KEY, MARKET_DESCRIPTION TEXT);
INSERT INTO MARKET_TYPES VALUES(1,'COMEX');
INSERT INTO MARKET_TYPES VALUES(2,'NYSEL');
INSERT INTO MARKET_TYPES VALUES(3,'CME');
INSERT INTO MARKET_TYPES VALUES(4,'CBOT');
CREATE TABLE MASTER_LOG (EVENT_INFO TEXT, EVENT_ID INTEGER PRIMARY KEY, LOG_EVENT_TYPE INTEGER, TIMESTAMP_GMT DATETIME);
CREATE TABLE POSITIONS (CURRENCY NUMERIC, DEBIT NUMERIC, CREDIT NUMERIC, ACCOUNT_ID NUMERIC, OPEN NUMERIC, PRICE NUMERIC, CONTRACT_ID NUMERIC, SHORT_QUANTITY NUMERIC, LONG_QUANTITY NUMERIC, MARKET_ID NUMERIC, POSITION_ID INTEGER PRIMARY KEY, DATE DATE);
COMMIT;
