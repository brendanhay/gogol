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
-- Module      : Network.Google.Resource.Directory.Members.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a user to the specified group.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.members.insert@.
module Network.Google.Resource.Directory.Members.Insert
    (
    -- * REST Resource
      MembersInsertResource

    -- * Creating a Request
    , membersInsert
    , MembersInsert

    -- * Request Lenses
    , miXgafv
    , miUploadProtocol
    , miAccessToken
    , miGroupKey
    , miUploadType
    , miPayload
    , miCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.members.insert@ method which the
-- 'MembersInsert' request conforms to.
type MembersInsertResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               "members" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Member :> Post '[JSON] Member

-- | Adds a user to the specified group.
--
-- /See:/ 'membersInsert' smart constructor.
data MembersInsert =
  MembersInsert'
    { _miXgafv :: !(Maybe Xgafv)
    , _miUploadProtocol :: !(Maybe Text)
    , _miAccessToken :: !(Maybe Text)
    , _miGroupKey :: !Text
    , _miUploadType :: !(Maybe Text)
    , _miPayload :: !Member
    , _miCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MembersInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miXgafv'
--
-- * 'miUploadProtocol'
--
-- * 'miAccessToken'
--
-- * 'miGroupKey'
--
-- * 'miUploadType'
--
-- * 'miPayload'
--
-- * 'miCallback'
membersInsert
    :: Text -- ^ 'miGroupKey'
    -> Member -- ^ 'miPayload'
    -> MembersInsert
membersInsert pMiGroupKey_ pMiPayload_ =
  MembersInsert'
    { _miXgafv = Nothing
    , _miUploadProtocol = Nothing
    , _miAccessToken = Nothing
    , _miGroupKey = pMiGroupKey_
    , _miUploadType = Nothing
    , _miPayload = pMiPayload_
    , _miCallback = Nothing
    }


-- | V1 error format.
miXgafv :: Lens' MembersInsert (Maybe Xgafv)
miXgafv = lens _miXgafv (\ s a -> s{_miXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
miUploadProtocol :: Lens' MembersInsert (Maybe Text)
miUploadProtocol
  = lens _miUploadProtocol
      (\ s a -> s{_miUploadProtocol = a})

-- | OAuth access token.
miAccessToken :: Lens' MembersInsert (Maybe Text)
miAccessToken
  = lens _miAccessToken
      (\ s a -> s{_miAccessToken = a})

-- | Identifies the group in the API request. The value can be the group\'s
-- email address, group alias, or the unique group ID.
miGroupKey :: Lens' MembersInsert Text
miGroupKey
  = lens _miGroupKey (\ s a -> s{_miGroupKey = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
miUploadType :: Lens' MembersInsert (Maybe Text)
miUploadType
  = lens _miUploadType (\ s a -> s{_miUploadType = a})

-- | Multipart request metadata.
miPayload :: Lens' MembersInsert Member
miPayload
  = lens _miPayload (\ s a -> s{_miPayload = a})

-- | JSONP
miCallback :: Lens' MembersInsert (Maybe Text)
miCallback
  = lens _miCallback (\ s a -> s{_miCallback = a})

instance GoogleRequest MembersInsert where
        type Rs MembersInsert = Member
        type Scopes MembersInsert =
             '["https://www.googleapis.com/auth/admin.directory.group",
               "https://www.googleapis.com/auth/admin.directory.group.member"]
        requestClient MembersInsert'{..}
          = go _miGroupKey _miXgafv _miUploadProtocol
              _miAccessToken
              _miUploadType
              _miCallback
              (Just AltJSON)
              _miPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy MembersInsertResource)
                      mempty
