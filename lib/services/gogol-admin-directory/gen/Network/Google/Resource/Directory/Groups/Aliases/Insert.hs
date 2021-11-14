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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds an alias for the group.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.groups.aliases.insert@.
module Network.Google.Resource.Directory.Groups.Aliases.Insert
    (
    -- * REST Resource
      GroupsAliasesInsertResource

    -- * Creating a Request
    , groupsAliasesInsert
    , GroupsAliasesInsert

    -- * Request Lenses
    , gaiXgafv
    , gaiUploadProtocol
    , gaiAccessToken
    , gaiGroupKey
    , gaiUploadType
    , gaiPayload
    , gaiCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.groups.aliases.insert@ method which the
-- 'GroupsAliasesInsert' request conforms to.
type GroupsAliasesInsertResource =
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
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Alias :> Post '[JSON] Alias

-- | Adds an alias for the group.
--
-- /See:/ 'groupsAliasesInsert' smart constructor.
data GroupsAliasesInsert =
  GroupsAliasesInsert'
    { _gaiXgafv :: !(Maybe Xgafv)
    , _gaiUploadProtocol :: !(Maybe Text)
    , _gaiAccessToken :: !(Maybe Text)
    , _gaiGroupKey :: !Text
    , _gaiUploadType :: !(Maybe Text)
    , _gaiPayload :: !Alias
    , _gaiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsAliasesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaiXgafv'
--
-- * 'gaiUploadProtocol'
--
-- * 'gaiAccessToken'
--
-- * 'gaiGroupKey'
--
-- * 'gaiUploadType'
--
-- * 'gaiPayload'
--
-- * 'gaiCallback'
groupsAliasesInsert
    :: Text -- ^ 'gaiGroupKey'
    -> Alias -- ^ 'gaiPayload'
    -> GroupsAliasesInsert
groupsAliasesInsert pGaiGroupKey_ pGaiPayload_ =
  GroupsAliasesInsert'
    { _gaiXgafv = Nothing
    , _gaiUploadProtocol = Nothing
    , _gaiAccessToken = Nothing
    , _gaiGroupKey = pGaiGroupKey_
    , _gaiUploadType = Nothing
    , _gaiPayload = pGaiPayload_
    , _gaiCallback = Nothing
    }


-- | V1 error format.
gaiXgafv :: Lens' GroupsAliasesInsert (Maybe Xgafv)
gaiXgafv = lens _gaiXgafv (\ s a -> s{_gaiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gaiUploadProtocol :: Lens' GroupsAliasesInsert (Maybe Text)
gaiUploadProtocol
  = lens _gaiUploadProtocol
      (\ s a -> s{_gaiUploadProtocol = a})

-- | OAuth access token.
gaiAccessToken :: Lens' GroupsAliasesInsert (Maybe Text)
gaiAccessToken
  = lens _gaiAccessToken
      (\ s a -> s{_gaiAccessToken = a})

-- | Identifies the group in the API request. The value can be the group\'s
-- email address, group alias, or the unique group ID.
gaiGroupKey :: Lens' GroupsAliasesInsert Text
gaiGroupKey
  = lens _gaiGroupKey (\ s a -> s{_gaiGroupKey = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gaiUploadType :: Lens' GroupsAliasesInsert (Maybe Text)
gaiUploadType
  = lens _gaiUploadType
      (\ s a -> s{_gaiUploadType = a})

-- | Multipart request metadata.
gaiPayload :: Lens' GroupsAliasesInsert Alias
gaiPayload
  = lens _gaiPayload (\ s a -> s{_gaiPayload = a})

-- | JSONP
gaiCallback :: Lens' GroupsAliasesInsert (Maybe Text)
gaiCallback
  = lens _gaiCallback (\ s a -> s{_gaiCallback = a})

instance GoogleRequest GroupsAliasesInsert where
        type Rs GroupsAliasesInsert = Alias
        type Scopes GroupsAliasesInsert =
             '["https://www.googleapis.com/auth/admin.directory.group"]
        requestClient GroupsAliasesInsert'{..}
          = go _gaiGroupKey _gaiXgafv _gaiUploadProtocol
              _gaiAccessToken
              _gaiUploadType
              _gaiCallback
              (Just AltJSON)
              _gaiPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy GroupsAliasesInsertResource)
                      mempty
