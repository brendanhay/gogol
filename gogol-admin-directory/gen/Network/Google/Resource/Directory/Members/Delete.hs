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
-- Module      : Network.Google.Resource.Directory.Members.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a member from a group.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.members.delete@.
module Network.Google.Resource.Directory.Members.Delete
    (
    -- * REST Resource
      MembersDeleteResource

    -- * Creating a Request
    , membersDelete
    , MembersDelete

    -- * Request Lenses
    , mdXgafv
    , mdMemberKey
    , mdUploadProtocol
    , mdAccessToken
    , mdGroupKey
    , mdUploadType
    , mdCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.members.delete@ method which the
-- 'MembersDelete' request conforms to.
type MembersDeleteResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               "members" :>
                 Capture "memberKey" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a member from a group.
--
-- /See:/ 'membersDelete' smart constructor.
data MembersDelete =
  MembersDelete'
    { _mdXgafv :: !(Maybe Xgafv)
    , _mdMemberKey :: !Text
    , _mdUploadProtocol :: !(Maybe Text)
    , _mdAccessToken :: !(Maybe Text)
    , _mdGroupKey :: !Text
    , _mdUploadType :: !(Maybe Text)
    , _mdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MembersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdXgafv'
--
-- * 'mdMemberKey'
--
-- * 'mdUploadProtocol'
--
-- * 'mdAccessToken'
--
-- * 'mdGroupKey'
--
-- * 'mdUploadType'
--
-- * 'mdCallback'
membersDelete
    :: Text -- ^ 'mdMemberKey'
    -> Text -- ^ 'mdGroupKey'
    -> MembersDelete
membersDelete pMdMemberKey_ pMdGroupKey_ =
  MembersDelete'
    { _mdXgafv = Nothing
    , _mdMemberKey = pMdMemberKey_
    , _mdUploadProtocol = Nothing
    , _mdAccessToken = Nothing
    , _mdGroupKey = pMdGroupKey_
    , _mdUploadType = Nothing
    , _mdCallback = Nothing
    }


-- | V1 error format.
mdXgafv :: Lens' MembersDelete (Maybe Xgafv)
mdXgafv = lens _mdXgafv (\ s a -> s{_mdXgafv = a})

-- | Identifies the group member in the API request. A group member can be a
-- user or another group. The value can be the member\'s (group or user)
-- primary email address, alias, or unique ID.
mdMemberKey :: Lens' MembersDelete Text
mdMemberKey
  = lens _mdMemberKey (\ s a -> s{_mdMemberKey = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mdUploadProtocol :: Lens' MembersDelete (Maybe Text)
mdUploadProtocol
  = lens _mdUploadProtocol
      (\ s a -> s{_mdUploadProtocol = a})

-- | OAuth access token.
mdAccessToken :: Lens' MembersDelete (Maybe Text)
mdAccessToken
  = lens _mdAccessToken
      (\ s a -> s{_mdAccessToken = a})

-- | Identifies the group in the API request. The value can be the group\'s
-- email address, group alias, or the unique group ID.
mdGroupKey :: Lens' MembersDelete Text
mdGroupKey
  = lens _mdGroupKey (\ s a -> s{_mdGroupKey = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mdUploadType :: Lens' MembersDelete (Maybe Text)
mdUploadType
  = lens _mdUploadType (\ s a -> s{_mdUploadType = a})

-- | JSONP
mdCallback :: Lens' MembersDelete (Maybe Text)
mdCallback
  = lens _mdCallback (\ s a -> s{_mdCallback = a})

instance GoogleRequest MembersDelete where
        type Rs MembersDelete = ()
        type Scopes MembersDelete =
             '["https://www.googleapis.com/auth/admin.directory.group",
               "https://www.googleapis.com/auth/admin.directory.group.member"]
        requestClient MembersDelete'{..}
          = go _mdGroupKey _mdMemberKey _mdXgafv
              _mdUploadProtocol
              _mdAccessToken
              _mdUploadType
              _mdCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy MembersDeleteResource)
                      mempty
