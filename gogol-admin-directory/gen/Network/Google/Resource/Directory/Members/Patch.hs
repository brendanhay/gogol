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
-- Module      : Network.Google.Resource.Directory.Members.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the membership properties of a user in the specified group. This
-- method supports [patch
-- semantics](\/admin-sdk\/directory\/v1\/guides\/performance#patch).
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.members.patch@.
module Network.Google.Resource.Directory.Members.Patch
    (
    -- * REST Resource
      MembersPatchResource

    -- * Creating a Request
    , membersPatch
    , MembersPatch

    -- * Request Lenses
    , mpXgafv
    , mpMemberKey
    , mpUploadProtocol
    , mpAccessToken
    , mpGroupKey
    , mpUploadType
    , mpPayload
    , mpCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.members.patch@ method which the
-- 'MembersPatch' request conforms to.
type MembersPatchResource =
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
                               ReqBody '[JSON] Member :> Patch '[JSON] Member

-- | Updates the membership properties of a user in the specified group. This
-- method supports [patch
-- semantics](\/admin-sdk\/directory\/v1\/guides\/performance#patch).
--
-- /See:/ 'membersPatch' smart constructor.
data MembersPatch =
  MembersPatch'
    { _mpXgafv :: !(Maybe Xgafv)
    , _mpMemberKey :: !Text
    , _mpUploadProtocol :: !(Maybe Text)
    , _mpAccessToken :: !(Maybe Text)
    , _mpGroupKey :: !Text
    , _mpUploadType :: !(Maybe Text)
    , _mpPayload :: !Member
    , _mpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MembersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpXgafv'
--
-- * 'mpMemberKey'
--
-- * 'mpUploadProtocol'
--
-- * 'mpAccessToken'
--
-- * 'mpGroupKey'
--
-- * 'mpUploadType'
--
-- * 'mpPayload'
--
-- * 'mpCallback'
membersPatch
    :: Text -- ^ 'mpMemberKey'
    -> Text -- ^ 'mpGroupKey'
    -> Member -- ^ 'mpPayload'
    -> MembersPatch
membersPatch pMpMemberKey_ pMpGroupKey_ pMpPayload_ =
  MembersPatch'
    { _mpXgafv = Nothing
    , _mpMemberKey = pMpMemberKey_
    , _mpUploadProtocol = Nothing
    , _mpAccessToken = Nothing
    , _mpGroupKey = pMpGroupKey_
    , _mpUploadType = Nothing
    , _mpPayload = pMpPayload_
    , _mpCallback = Nothing
    }


-- | V1 error format.
mpXgafv :: Lens' MembersPatch (Maybe Xgafv)
mpXgafv = lens _mpXgafv (\ s a -> s{_mpXgafv = a})

-- | Identifies the group member in the API request. A group member can be a
-- user or another group. The value can be the member\'s (group or user)
-- primary email address, alias, or unique ID.
mpMemberKey :: Lens' MembersPatch Text
mpMemberKey
  = lens _mpMemberKey (\ s a -> s{_mpMemberKey = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mpUploadProtocol :: Lens' MembersPatch (Maybe Text)
mpUploadProtocol
  = lens _mpUploadProtocol
      (\ s a -> s{_mpUploadProtocol = a})

-- | OAuth access token.
mpAccessToken :: Lens' MembersPatch (Maybe Text)
mpAccessToken
  = lens _mpAccessToken
      (\ s a -> s{_mpAccessToken = a})

-- | Identifies the group in the API request. The value can be the group\'s
-- email address, group alias, or the unique group ID.
mpGroupKey :: Lens' MembersPatch Text
mpGroupKey
  = lens _mpGroupKey (\ s a -> s{_mpGroupKey = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mpUploadType :: Lens' MembersPatch (Maybe Text)
mpUploadType
  = lens _mpUploadType (\ s a -> s{_mpUploadType = a})

-- | Multipart request metadata.
mpPayload :: Lens' MembersPatch Member
mpPayload
  = lens _mpPayload (\ s a -> s{_mpPayload = a})

-- | JSONP
mpCallback :: Lens' MembersPatch (Maybe Text)
mpCallback
  = lens _mpCallback (\ s a -> s{_mpCallback = a})

instance GoogleRequest MembersPatch where
        type Rs MembersPatch = Member
        type Scopes MembersPatch =
             '["https://www.googleapis.com/auth/admin.directory.group",
               "https://www.googleapis.com/auth/admin.directory.group.member"]
        requestClient MembersPatch'{..}
          = go _mpGroupKey _mpMemberKey _mpXgafv
              _mpUploadProtocol
              _mpAccessToken
              _mpUploadType
              _mpCallback
              (Just AltJSON)
              _mpPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy MembersPatchResource)
                      mempty
