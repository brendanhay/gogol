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
-- Module      : Network.Google.Resource.People.ContactGroups.Members.Modify
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modify the members of a contact group owned by the authenticated user.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.contactGroups.members.modify@.
module Network.Google.Resource.People.ContactGroups.Members.Modify
    (
    -- * REST Resource
      ContactGroupsMembersModifyResource

    -- * Creating a Request
    , contactGroupsMembersModify
    , ContactGroupsMembersModify

    -- * Request Lenses
    , cgmmXgafv
    , cgmmUploadProtocol
    , cgmmResourceName
    , cgmmAccessToken
    , cgmmUploadType
    , cgmmPayload
    , cgmmCallback
    ) where

import           Network.Google.People.Types
import           Network.Google.Prelude

-- | A resource alias for @people.contactGroups.members.modify@ method which the
-- 'ContactGroupsMembersModify' request conforms to.
type ContactGroupsMembersModifyResource =
     "v1" :>
       Capture "resourceName" Text :>
         "members:modify" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ModifyContactGroupMembersRequest :>
                         Post '[JSON] ModifyContactGroupMembersResponse

-- | Modify the members of a contact group owned by the authenticated user.
--
-- /See:/ 'contactGroupsMembersModify' smart constructor.
data ContactGroupsMembersModify = ContactGroupsMembersModify'
    { _cgmmXgafv          :: !(Maybe Xgafv)
    , _cgmmUploadProtocol :: !(Maybe Text)
    , _cgmmResourceName   :: !Text
    , _cgmmAccessToken    :: !(Maybe Text)
    , _cgmmUploadType     :: !(Maybe Text)
    , _cgmmPayload        :: !ModifyContactGroupMembersRequest
    , _cgmmCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContactGroupsMembersModify' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgmmXgafv'
--
-- * 'cgmmUploadProtocol'
--
-- * 'cgmmResourceName'
--
-- * 'cgmmAccessToken'
--
-- * 'cgmmUploadType'
--
-- * 'cgmmPayload'
--
-- * 'cgmmCallback'
contactGroupsMembersModify
    :: Text -- ^ 'cgmmResourceName'
    -> ModifyContactGroupMembersRequest -- ^ 'cgmmPayload'
    -> ContactGroupsMembersModify
contactGroupsMembersModify pCgmmResourceName_ pCgmmPayload_ =
    ContactGroupsMembersModify'
    { _cgmmXgafv = Nothing
    , _cgmmUploadProtocol = Nothing
    , _cgmmResourceName = pCgmmResourceName_
    , _cgmmAccessToken = Nothing
    , _cgmmUploadType = Nothing
    , _cgmmPayload = pCgmmPayload_
    , _cgmmCallback = Nothing
    }

-- | V1 error format.
cgmmXgafv :: Lens' ContactGroupsMembersModify (Maybe Xgafv)
cgmmXgafv
  = lens _cgmmXgafv (\ s a -> s{_cgmmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cgmmUploadProtocol :: Lens' ContactGroupsMembersModify (Maybe Text)
cgmmUploadProtocol
  = lens _cgmmUploadProtocol
      (\ s a -> s{_cgmmUploadProtocol = a})

-- | The resource name of the contact group to modify.
cgmmResourceName :: Lens' ContactGroupsMembersModify Text
cgmmResourceName
  = lens _cgmmResourceName
      (\ s a -> s{_cgmmResourceName = a})

-- | OAuth access token.
cgmmAccessToken :: Lens' ContactGroupsMembersModify (Maybe Text)
cgmmAccessToken
  = lens _cgmmAccessToken
      (\ s a -> s{_cgmmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cgmmUploadType :: Lens' ContactGroupsMembersModify (Maybe Text)
cgmmUploadType
  = lens _cgmmUploadType
      (\ s a -> s{_cgmmUploadType = a})

-- | Multipart request metadata.
cgmmPayload :: Lens' ContactGroupsMembersModify ModifyContactGroupMembersRequest
cgmmPayload
  = lens _cgmmPayload (\ s a -> s{_cgmmPayload = a})

-- | JSONP
cgmmCallback :: Lens' ContactGroupsMembersModify (Maybe Text)
cgmmCallback
  = lens _cgmmCallback (\ s a -> s{_cgmmCallback = a})

instance GoogleRequest ContactGroupsMembersModify
         where
        type Rs ContactGroupsMembersModify =
             ModifyContactGroupMembersResponse
        type Scopes ContactGroupsMembersModify =
             '["https://www.googleapis.com/auth/contacts"]
        requestClient ContactGroupsMembersModify'{..}
          = go _cgmmResourceName _cgmmXgafv _cgmmUploadProtocol
              _cgmmAccessToken
              _cgmmUploadType
              _cgmmCallback
              (Just AltJSON)
              _cgmmPayload
              peopleService
          where go
                  = buildClient
                      (Proxy :: Proxy ContactGroupsMembersModifyResource)
                      mempty
