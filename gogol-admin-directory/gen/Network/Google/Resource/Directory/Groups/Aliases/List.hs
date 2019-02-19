{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Directory.Groups.Aliases.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all aliases for a group
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.groups.aliases.list@.
module Network.Google.Resource.Directory.Groups.Aliases.List
    (
    -- * REST Resource
      GroupsAliasesListResource

    -- * Creating a Request
    , groupsAliasesList
    , GroupsAliasesList

    -- * Request Lenses
    , galGroupKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.groups.aliases.list@ method which the
-- 'GroupsAliasesList' request conforms to.
type GroupsAliasesListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               "aliases" :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Aliases

-- | List all aliases for a group
--
-- /See:/ 'groupsAliasesList' smart constructor.
newtype GroupsAliasesList =
  GroupsAliasesList'
    { _galGroupKey :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsAliasesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'galGroupKey'
groupsAliasesList
    :: Text -- ^ 'galGroupKey'
    -> GroupsAliasesList
groupsAliasesList pGalGroupKey_ =
  GroupsAliasesList' {_galGroupKey = pGalGroupKey_}


-- | Email or immutable ID of the group
galGroupKey :: Lens' GroupsAliasesList Text
galGroupKey
  = lens _galGroupKey (\ s a -> s{_galGroupKey = a})

instance GoogleRequest GroupsAliasesList where
        type Rs GroupsAliasesList = Aliases
        type Scopes GroupsAliasesList =
             '["https://www.googleapis.com/auth/admin.directory.group",
               "https://www.googleapis.com/auth/admin.directory.group.readonly"]
        requestClient GroupsAliasesList'{..}
          = go _galGroupKey (Just AltJSON) directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy GroupsAliasesListResource)
                      mempty
