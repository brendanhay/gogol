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
-- Module      : Network.Google.Resource.Directory.Members.HasMember
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks whether the given user is a member of the group. Membership can
-- be direct or nested.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.members.hasMember@.
module Network.Google.Resource.Directory.Members.HasMember
    (
    -- * REST Resource
      MembersHasMemberResource

    -- * Creating a Request
    , membersHasMember'
    , MembersHasMember'

    -- * Request Lenses
    , mhmXgafv
    , mhmMemberKey
    , mhmUploadProtocol
    , mhmAccessToken
    , mhmGroupKey
    , mhmUploadType
    , mhmCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.members.hasMember@ method which the
-- 'MembersHasMember'' request conforms to.
type MembersHasMemberResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               "hasMember" :>
                 Capture "memberKey" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] MembersHasMember

-- | Checks whether the given user is a member of the group. Membership can
-- be direct or nested.
--
-- /See:/ 'membersHasMember'' smart constructor.
data MembersHasMember' =
  MembersHasMember''
    { _mhmXgafv :: !(Maybe Xgafv)
    , _mhmMemberKey :: !Text
    , _mhmUploadProtocol :: !(Maybe Text)
    , _mhmAccessToken :: !(Maybe Text)
    , _mhmGroupKey :: !Text
    , _mhmUploadType :: !(Maybe Text)
    , _mhmCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MembersHasMember'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mhmXgafv'
--
-- * 'mhmMemberKey'
--
-- * 'mhmUploadProtocol'
--
-- * 'mhmAccessToken'
--
-- * 'mhmGroupKey'
--
-- * 'mhmUploadType'
--
-- * 'mhmCallback'
membersHasMember'
    :: Text -- ^ 'mhmMemberKey'
    -> Text -- ^ 'mhmGroupKey'
    -> MembersHasMember'
membersHasMember' pMhmMemberKey_ pMhmGroupKey_ =
  MembersHasMember''
    { _mhmXgafv = Nothing
    , _mhmMemberKey = pMhmMemberKey_
    , _mhmUploadProtocol = Nothing
    , _mhmAccessToken = Nothing
    , _mhmGroupKey = pMhmGroupKey_
    , _mhmUploadType = Nothing
    , _mhmCallback = Nothing
    }


-- | V1 error format.
mhmXgafv :: Lens' MembersHasMember' (Maybe Xgafv)
mhmXgafv = lens _mhmXgafv (\ s a -> s{_mhmXgafv = a})

-- | Identifies the user member in the API request. The value can be the
-- user\'s primary email address, alias, or unique ID.
mhmMemberKey :: Lens' MembersHasMember' Text
mhmMemberKey
  = lens _mhmMemberKey (\ s a -> s{_mhmMemberKey = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mhmUploadProtocol :: Lens' MembersHasMember' (Maybe Text)
mhmUploadProtocol
  = lens _mhmUploadProtocol
      (\ s a -> s{_mhmUploadProtocol = a})

-- | OAuth access token.
mhmAccessToken :: Lens' MembersHasMember' (Maybe Text)
mhmAccessToken
  = lens _mhmAccessToken
      (\ s a -> s{_mhmAccessToken = a})

-- | Identifies the group in the API request. The value can be the group\'s
-- email address, group alias, or the unique group ID.
mhmGroupKey :: Lens' MembersHasMember' Text
mhmGroupKey
  = lens _mhmGroupKey (\ s a -> s{_mhmGroupKey = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mhmUploadType :: Lens' MembersHasMember' (Maybe Text)
mhmUploadType
  = lens _mhmUploadType
      (\ s a -> s{_mhmUploadType = a})

-- | JSONP
mhmCallback :: Lens' MembersHasMember' (Maybe Text)
mhmCallback
  = lens _mhmCallback (\ s a -> s{_mhmCallback = a})

instance GoogleRequest MembersHasMember' where
        type Rs MembersHasMember' = MembersHasMember
        type Scopes MembersHasMember' =
             '["https://www.googleapis.com/auth/admin.directory.group",
               "https://www.googleapis.com/auth/admin.directory.group.member",
               "https://www.googleapis.com/auth/admin.directory.group.member.readonly",
               "https://www.googleapis.com/auth/admin.directory.group.readonly"]
        requestClient MembersHasMember''{..}
          = go _mhmGroupKey _mhmMemberKey _mhmXgafv
              _mhmUploadProtocol
              _mhmAccessToken
              _mhmUploadType
              _mhmCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy MembersHasMemberResource)
                      mempty
