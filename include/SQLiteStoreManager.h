/*
 *
 * (C) 2013-23 - ntop.org
 *
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software Foundation,
 * Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
 *
 */

#ifndef _SQLITE_STORE_MANAGER_H_
#define _SQLITE_STORE_MANAGER_H_

#include "ntop_includes.h"

class SQLiteStoreManager {
 private:
 protected:
  int ifid;
  NetworkInterface *iface;
  Mutex m;
  sqlite3 *db;

  int init(const char *db_file_full_path);
  int exec_query(const char *db_query,
                 int (*callback)(void *, int, char **, char **), void *payload);
  int exec_statement(sqlite3_stmt *stmt);

 public:
  SQLiteStoreManager(int interface_id);
  virtual ~SQLiteStoreManager();

  NetworkInterface *getNetworkInterface();
  int optimizeStore();
};

#endif /* _SQLITE_STORE_MANAGER_H_ */
