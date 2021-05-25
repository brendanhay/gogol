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
-- Lists all aliases for a group.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.groups.aliases.list@.
module Network.Google.Resource.Directory.Groups.Aliases.List
    (
    -- * REST Resource
      GroupsAliasesListResource

    -- * Creating a Request
    , groupsAliasesList
    , GroupsAliasesList

    -- * Request Lenses
    , galXgafv
    , galUploadProtocol
    , galAccessToken
    , galGroupKey
    , galUploadType
    , galCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.groups.aliases.list@ method which the
-- 'GroupsAliasesList' request conforms to.
type GroupsAliasesListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               "aliases" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Aliases

-- | Lists all aliases for a group.
--
-- /See:/ 'groupsAliasesList' smart constructor.
data GroupsAliasesList =
  GroupsAliasesList'
    { _galXgafv :: !(Maybe Xgafv)
    , _galUploadProtocol :: !(Maybe Text)
    , _galAccessToken :: !(Maybe Text)
    , _galGroupKey :: !Text
    , _galUploadType :: !(Maybe Text)
    , _galCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsAliasesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'galXgafv'
--
-- * 'galUploadProtocol'
--
-- * 'galAccessToken'
--
-- * 'galGroupKey'
--
-- * 'galUploadType'
--
-- * 'galCallback'
groupsAliasesList
    :: Text -- ^ 'galGroupKey'
    -> GroupsAliasesList
groupsAliasesList pGalGroupKey_ =
  GroupsAliasesList'
    { _galXgafv = Nothing
    , _galUploadProtocol = Nothing
    , _galAccessToken = Nothing
    , _galGroupKey = pGalGroupKey_
    , _galUploadType = Nothing
    , _galCallback = Nothing
    }


-- | V1 error format.
galXgafv :: Lens' GroupsAliasesList (Maybe Xgafv)
galXgafv = lens _galXgafv (\ s a -> s{_galXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
galUploadProtocol :: Lens' GroupsAliasesList (Maybe Text)
galUploadProtocol
  = lens _galUploadProtocol
      (\ s a -> s{_galUploadProtocol = a})

-- | OAuth access token.
galAccessToken :: Lens' GroupsAliasesList (Maybe Text)
galAccessToken
  = lens _galAccessToken
      (\ s a -> s{_galAccessToken = a})

-- | Identifies the group in the API request. The value can be the group\'s
-- email address, group alias, or the unique group ID.
galGroupKey :: Lens' GroupsAliasesList Text
galGroupKey
  = lens _galGroupKey (\ s a -> s{_galGroupKey = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
galUploadType :: Lens' GroupsAliasesList (Maybe Text)
galUploadType
  = lens _galUploadType
      (\ s a -> s{_galUploadType = a})

-- | JSONP
galCallback :: Lens' GroupsAliasesList (Maybe Text)
galCallback
  = lens _galCallback (\ s a -> s{_galCallback = a})

instance GoogleRequest GroupsAliasesList where
        type Rs GroupsAliasesList = Aliases
        type Scopes GroupsAliasesList =
             '["https://www.googleapis.com/auth/admin.directory.group",
               "https://www.googleapis.com/auth/admin.directory.group.readonly"]
        requestClient GroupsAliasesList'{..}
          = go _galGroupKey _galXgafv _galUploadProtocol
              _galAccessToken
              _galUploadType
              _galCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy GroupsAliasesListResource)
                      mempty
