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
-- Module      : Network.Google.Resource.Directory.Groups.Aliases.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add a alias for the group
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.groups.aliases.insert@.
module Network.Google.Resource.Directory.Groups.Aliases.Insert
    (
    -- * REST Resource
      GroupsAliasesInsertResource

    -- * Creating a Request
    , groupsAliasesInsert
    , GroupsAliasesInsert

    -- * Request Lenses
    , gaiGroupKey
    , gaiPayload
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.groups.aliases.insert@ method which the
-- 'GroupsAliasesInsert' request conforms to.
type GroupsAliasesInsertResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               "aliases" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Alias :> Post '[JSON] Alias

-- | Add a alias for the group
--
-- /See:/ 'groupsAliasesInsert' smart constructor.
data GroupsAliasesInsert = GroupsAliasesInsert
    { _gaiGroupKey :: !Text
    , _gaiPayload  :: !Alias
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsAliasesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaiGroupKey'
--
-- * 'gaiPayload'
groupsAliasesInsert
    :: Text -- ^ 'gaiGroupKey'
    -> Alias -- ^ 'gaiPayload'
    -> GroupsAliasesInsert
groupsAliasesInsert pGaiGroupKey_ pGaiPayload_ =
    GroupsAliasesInsert
    { _gaiGroupKey = pGaiGroupKey_
    , _gaiPayload = pGaiPayload_
    }

-- | Email or immutable Id of the group
gaiGroupKey :: Lens' GroupsAliasesInsert Text
gaiGroupKey
  = lens _gaiGroupKey (\ s a -> s{_gaiGroupKey = a})

-- | Multipart request metadata.
gaiPayload :: Lens' GroupsAliasesInsert Alias
gaiPayload
  = lens _gaiPayload (\ s a -> s{_gaiPayload = a})

instance GoogleRequest GroupsAliasesInsert where
        type Rs GroupsAliasesInsert = Alias
        type Scopes GroupsAliasesInsert =
             '["https://www.googleapis.com/auth/admin.directory.group"]
        requestClient GroupsAliasesInsert{..}
          = go _gaiGroupKey (Just AltJSON) _gaiPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy GroupsAliasesInsertResource)
                      mempty
