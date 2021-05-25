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
-- Module      : Network.Google.Resource.Directory.Members.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a paginated list of all members in a group.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.members.list@.
module Network.Google.Resource.Directory.Members.List
    (
    -- * REST Resource
      MembersListResource

    -- * Creating a Request
    , membersList
    , MembersList

    -- * Request Lenses
    , mlXgafv
    , mlRoles
    , mlUploadProtocol
    , mlAccessToken
    , mlGroupKey
    , mlUploadType
    , mlPageToken
    , mlIncludeDerivedMembership
    , mlMaxResults
    , mlCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.members.list@ method which the
-- 'MembersList' request conforms to.
type MembersListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               "members" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "roles" Text :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "includeDerivedMembership" Bool :>
                               QueryParam "maxResults" (Textual Int32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] Members

-- | Retrieves a paginated list of all members in a group.
--
-- /See:/ 'membersList' smart constructor.
data MembersList =
  MembersList'
    { _mlXgafv :: !(Maybe Xgafv)
    , _mlRoles :: !(Maybe Text)
    , _mlUploadProtocol :: !(Maybe Text)
    , _mlAccessToken :: !(Maybe Text)
    , _mlGroupKey :: !Text
    , _mlUploadType :: !(Maybe Text)
    , _mlPageToken :: !(Maybe Text)
    , _mlIncludeDerivedMembership :: !(Maybe Bool)
    , _mlMaxResults :: !(Textual Int32)
    , _mlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MembersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlXgafv'
--
-- * 'mlRoles'
--
-- * 'mlUploadProtocol'
--
-- * 'mlAccessToken'
--
-- * 'mlGroupKey'
--
-- * 'mlUploadType'
--
-- * 'mlPageToken'
--
-- * 'mlIncludeDerivedMembership'
--
-- * 'mlMaxResults'
--
-- * 'mlCallback'
membersList
    :: Text -- ^ 'mlGroupKey'
    -> MembersList
membersList pMlGroupKey_ =
  MembersList'
    { _mlXgafv = Nothing
    , _mlRoles = Nothing
    , _mlUploadProtocol = Nothing
    , _mlAccessToken = Nothing
    , _mlGroupKey = pMlGroupKey_
    , _mlUploadType = Nothing
    , _mlPageToken = Nothing
    , _mlIncludeDerivedMembership = Nothing
    , _mlMaxResults = 200
    , _mlCallback = Nothing
    }


-- | V1 error format.
mlXgafv :: Lens' MembersList (Maybe Xgafv)
mlXgafv = lens _mlXgafv (\ s a -> s{_mlXgafv = a})

-- | The \`roles\` query parameter allows you to retrieve group members by
-- role. Allowed values are \`OWNER\`, \`MANAGER\`, and \`MEMBER\`.
mlRoles :: Lens' MembersList (Maybe Text)
mlRoles = lens _mlRoles (\ s a -> s{_mlRoles = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mlUploadProtocol :: Lens' MembersList (Maybe Text)
mlUploadProtocol
  = lens _mlUploadProtocol
      (\ s a -> s{_mlUploadProtocol = a})

-- | OAuth access token.
mlAccessToken :: Lens' MembersList (Maybe Text)
mlAccessToken
  = lens _mlAccessToken
      (\ s a -> s{_mlAccessToken = a})

-- | Identifies the group in the API request. The value can be the group\'s
-- email address, group alias, or the unique group ID.
mlGroupKey :: Lens' MembersList Text
mlGroupKey
  = lens _mlGroupKey (\ s a -> s{_mlGroupKey = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mlUploadType :: Lens' MembersList (Maybe Text)
mlUploadType
  = lens _mlUploadType (\ s a -> s{_mlUploadType = a})

-- | Token to specify next page in the list.
mlPageToken :: Lens' MembersList (Maybe Text)
mlPageToken
  = lens _mlPageToken (\ s a -> s{_mlPageToken = a})

-- | Whether to list indirect memberships. Default: false.
mlIncludeDerivedMembership :: Lens' MembersList (Maybe Bool)
mlIncludeDerivedMembership
  = lens _mlIncludeDerivedMembership
      (\ s a -> s{_mlIncludeDerivedMembership = a})

-- | Maximum number of results to return. Max allowed value is 200.
mlMaxResults :: Lens' MembersList Int32
mlMaxResults
  = lens _mlMaxResults (\ s a -> s{_mlMaxResults = a})
      . _Coerce

-- | JSONP
mlCallback :: Lens' MembersList (Maybe Text)
mlCallback
  = lens _mlCallback (\ s a -> s{_mlCallback = a})

instance GoogleRequest MembersList where
        type Rs MembersList = Members
        type Scopes MembersList =
             '["https://www.googleapis.com/auth/admin.directory.group",
               "https://www.googleapis.com/auth/admin.directory.group.member",
               "https://www.googleapis.com/auth/admin.directory.group.member.readonly",
               "https://www.googleapis.com/auth/admin.directory.group.readonly"]
        requestClient MembersList'{..}
          = go _mlGroupKey _mlXgafv _mlRoles _mlUploadProtocol
              _mlAccessToken
              _mlUploadType
              _mlPageToken
              _mlIncludeDerivedMembership
              (Just _mlMaxResults)
              _mlCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy MembersListResource)
                      mempty
