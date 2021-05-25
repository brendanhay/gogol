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
-- Module      : Network.Google.Resource.Directory.Members.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the membership of a user in the specified group.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.members.update@.
module Network.Google.Resource.Directory.Members.Update
    (
    -- * REST Resource
      MembersUpdateResource

    -- * Creating a Request
    , membersUpdate
    , MembersUpdate

    -- * Request Lenses
    , muXgafv
    , muMemberKey
    , muUploadProtocol
    , muAccessToken
    , muGroupKey
    , muUploadType
    , muPayload
    , muCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.members.update@ method which the
-- 'MembersUpdate' request conforms to.
type MembersUpdateResource =
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
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Member :> Put '[JSON] Member

-- | Updates the membership of a user in the specified group.
--
-- /See:/ 'membersUpdate' smart constructor.
data MembersUpdate =
  MembersUpdate'
    { _muXgafv :: !(Maybe Xgafv)
    , _muMemberKey :: !Text
    , _muUploadProtocol :: !(Maybe Text)
    , _muAccessToken :: !(Maybe Text)
    , _muGroupKey :: !Text
    , _muUploadType :: !(Maybe Text)
    , _muPayload :: !Member
    , _muCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MembersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'muXgafv'
--
-- * 'muMemberKey'
--
-- * 'muUploadProtocol'
--
-- * 'muAccessToken'
--
-- * 'muGroupKey'
--
-- * 'muUploadType'
--
-- * 'muPayload'
--
-- * 'muCallback'
membersUpdate
    :: Text -- ^ 'muMemberKey'
    -> Text -- ^ 'muGroupKey'
    -> Member -- ^ 'muPayload'
    -> MembersUpdate
membersUpdate pMuMemberKey_ pMuGroupKey_ pMuPayload_ =
  MembersUpdate'
    { _muXgafv = Nothing
    , _muMemberKey = pMuMemberKey_
    , _muUploadProtocol = Nothing
    , _muAccessToken = Nothing
    , _muGroupKey = pMuGroupKey_
    , _muUploadType = Nothing
    , _muPayload = pMuPayload_
    , _muCallback = Nothing
    }


-- | V1 error format.
muXgafv :: Lens' MembersUpdate (Maybe Xgafv)
muXgafv = lens _muXgafv (\ s a -> s{_muXgafv = a})

-- | Identifies the group member in the API request. A group member can be a
-- user or another group. The value can be the member\'s (group or user)
-- primary email address, alias, or unique ID.
muMemberKey :: Lens' MembersUpdate Text
muMemberKey
  = lens _muMemberKey (\ s a -> s{_muMemberKey = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
muUploadProtocol :: Lens' MembersUpdate (Maybe Text)
muUploadProtocol
  = lens _muUploadProtocol
      (\ s a -> s{_muUploadProtocol = a})

-- | OAuth access token.
muAccessToken :: Lens' MembersUpdate (Maybe Text)
muAccessToken
  = lens _muAccessToken
      (\ s a -> s{_muAccessToken = a})

-- | Identifies the group in the API request. The value can be the group\'s
-- email address, group alias, or the unique group ID.
muGroupKey :: Lens' MembersUpdate Text
muGroupKey
  = lens _muGroupKey (\ s a -> s{_muGroupKey = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
muUploadType :: Lens' MembersUpdate (Maybe Text)
muUploadType
  = lens _muUploadType (\ s a -> s{_muUploadType = a})

-- | Multipart request metadata.
muPayload :: Lens' MembersUpdate Member
muPayload
  = lens _muPayload (\ s a -> s{_muPayload = a})

-- | JSONP
muCallback :: Lens' MembersUpdate (Maybe Text)
muCallback
  = lens _muCallback (\ s a -> s{_muCallback = a})

instance GoogleRequest MembersUpdate where
        type Rs MembersUpdate = Member
        type Scopes MembersUpdate =
             '["https://www.googleapis.com/auth/admin.directory.group",
               "https://www.googleapis.com/auth/admin.directory.group.member"]
        requestClient MembersUpdate'{..}
          = go _muGroupKey _muMemberKey _muXgafv
              _muUploadProtocol
              _muAccessToken
              _muUploadType
              _muCallback
              (Just AltJSON)
              _muPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy MembersUpdateResource)
                      mempty
