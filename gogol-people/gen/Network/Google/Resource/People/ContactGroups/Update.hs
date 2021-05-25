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
-- Module      : Network.Google.Resource.People.ContactGroups.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the name of an existing contact group owned by the authenticated
-- user. Updated contact group names must be unique to the users contact
-- groups. Attempting to create a group with a duplicate name will return a
-- HTTP 409 error.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.contactGroups.update@.
module Network.Google.Resource.People.ContactGroups.Update
    (
    -- * REST Resource
      ContactGroupsUpdateResource

    -- * Creating a Request
    , contactGroupsUpdate
    , ContactGroupsUpdate

    -- * Request Lenses
    , cguXgafv
    , cguUploadProtocol
    , cguResourceName
    , cguAccessToken
    , cguUploadType
    , cguPayload
    , cguCallback
    ) where

import Network.Google.People.Types
import Network.Google.Prelude

-- | A resource alias for @people.contactGroups.update@ method which the
-- 'ContactGroupsUpdate' request conforms to.
type ContactGroupsUpdateResource =
     "v1" :>
       Capture "resourceName" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UpdateContactGroupRequest :>
                       Put '[JSON] ContactGroup

-- | Update the name of an existing contact group owned by the authenticated
-- user. Updated contact group names must be unique to the users contact
-- groups. Attempting to create a group with a duplicate name will return a
-- HTTP 409 error.
--
-- /See:/ 'contactGroupsUpdate' smart constructor.
data ContactGroupsUpdate =
  ContactGroupsUpdate'
    { _cguXgafv :: !(Maybe Xgafv)
    , _cguUploadProtocol :: !(Maybe Text)
    , _cguResourceName :: !Text
    , _cguAccessToken :: !(Maybe Text)
    , _cguUploadType :: !(Maybe Text)
    , _cguPayload :: !UpdateContactGroupRequest
    , _cguCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContactGroupsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cguXgafv'
--
-- * 'cguUploadProtocol'
--
-- * 'cguResourceName'
--
-- * 'cguAccessToken'
--
-- * 'cguUploadType'
--
-- * 'cguPayload'
--
-- * 'cguCallback'
contactGroupsUpdate
    :: Text -- ^ 'cguResourceName'
    -> UpdateContactGroupRequest -- ^ 'cguPayload'
    -> ContactGroupsUpdate
contactGroupsUpdate pCguResourceName_ pCguPayload_ =
  ContactGroupsUpdate'
    { _cguXgafv = Nothing
    , _cguUploadProtocol = Nothing
    , _cguResourceName = pCguResourceName_
    , _cguAccessToken = Nothing
    , _cguUploadType = Nothing
    , _cguPayload = pCguPayload_
    , _cguCallback = Nothing
    }


-- | V1 error format.
cguXgafv :: Lens' ContactGroupsUpdate (Maybe Xgafv)
cguXgafv = lens _cguXgafv (\ s a -> s{_cguXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cguUploadProtocol :: Lens' ContactGroupsUpdate (Maybe Text)
cguUploadProtocol
  = lens _cguUploadProtocol
      (\ s a -> s{_cguUploadProtocol = a})

-- | The resource name for the contact group, assigned by the server. An
-- ASCII string, in the form of \`contactGroups\/{contact_group_id}\`.
cguResourceName :: Lens' ContactGroupsUpdate Text
cguResourceName
  = lens _cguResourceName
      (\ s a -> s{_cguResourceName = a})

-- | OAuth access token.
cguAccessToken :: Lens' ContactGroupsUpdate (Maybe Text)
cguAccessToken
  = lens _cguAccessToken
      (\ s a -> s{_cguAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cguUploadType :: Lens' ContactGroupsUpdate (Maybe Text)
cguUploadType
  = lens _cguUploadType
      (\ s a -> s{_cguUploadType = a})

-- | Multipart request metadata.
cguPayload :: Lens' ContactGroupsUpdate UpdateContactGroupRequest
cguPayload
  = lens _cguPayload (\ s a -> s{_cguPayload = a})

-- | JSONP
cguCallback :: Lens' ContactGroupsUpdate (Maybe Text)
cguCallback
  = lens _cguCallback (\ s a -> s{_cguCallback = a})

instance GoogleRequest ContactGroupsUpdate where
        type Rs ContactGroupsUpdate = ContactGroup
        type Scopes ContactGroupsUpdate =
             '["https://www.googleapis.com/auth/contacts"]
        requestClient ContactGroupsUpdate'{..}
          = go _cguResourceName _cguXgafv _cguUploadProtocol
              _cguAccessToken
              _cguUploadType
              _cguCallback
              (Just AltJSON)
              _cguPayload
              peopleService
          where go
                  = buildClient
                      (Proxy :: Proxy ContactGroupsUpdateResource)
                      mempty
