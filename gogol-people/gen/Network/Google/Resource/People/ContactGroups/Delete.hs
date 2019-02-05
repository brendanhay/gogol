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
-- Module      : Network.Google.Resource.People.ContactGroups.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete an existing contact group owned by the authenticated user by
-- specifying a contact group resource name.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.contactGroups.delete@.
module Network.Google.Resource.People.ContactGroups.Delete
    (
    -- * REST Resource
      ContactGroupsDeleteResource

    -- * Creating a Request
    , contactGroupsDelete
    , ContactGroupsDelete

    -- * Request Lenses
    , cgdXgafv
    , cgdUploadProtocol
    , cgdDeleteContacts
    , cgdResourceName
    , cgdAccessToken
    , cgdUploadType
    , cgdCallback
    ) where

import           Network.Google.People.Types
import           Network.Google.Prelude

-- | A resource alias for @people.contactGroups.delete@ method which the
-- 'ContactGroupsDelete' request conforms to.
type ContactGroupsDeleteResource =
     "v1" :>
       Capture "resourceName" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "deleteContacts" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Delete an existing contact group owned by the authenticated user by
-- specifying a contact group resource name.
--
-- /See:/ 'contactGroupsDelete' smart constructor.
data ContactGroupsDelete = ContactGroupsDelete'
    { _cgdXgafv          :: !(Maybe Xgafv)
    , _cgdUploadProtocol :: !(Maybe Text)
    , _cgdDeleteContacts :: !(Maybe Bool)
    , _cgdResourceName   :: !Text
    , _cgdAccessToken    :: !(Maybe Text)
    , _cgdUploadType     :: !(Maybe Text)
    , _cgdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContactGroupsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgdXgafv'
--
-- * 'cgdUploadProtocol'
--
-- * 'cgdDeleteContacts'
--
-- * 'cgdResourceName'
--
-- * 'cgdAccessToken'
--
-- * 'cgdUploadType'
--
-- * 'cgdCallback'
contactGroupsDelete
    :: Text -- ^ 'cgdResourceName'
    -> ContactGroupsDelete
contactGroupsDelete pCgdResourceName_ =
    ContactGroupsDelete'
    { _cgdXgafv = Nothing
    , _cgdUploadProtocol = Nothing
    , _cgdDeleteContacts = Nothing
    , _cgdResourceName = pCgdResourceName_
    , _cgdAccessToken = Nothing
    , _cgdUploadType = Nothing
    , _cgdCallback = Nothing
    }

-- | V1 error format.
cgdXgafv :: Lens' ContactGroupsDelete (Maybe Xgafv)
cgdXgafv = lens _cgdXgafv (\ s a -> s{_cgdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cgdUploadProtocol :: Lens' ContactGroupsDelete (Maybe Text)
cgdUploadProtocol
  = lens _cgdUploadProtocol
      (\ s a -> s{_cgdUploadProtocol = a})

-- | Set to true to also delete the contacts in the specified group.
cgdDeleteContacts :: Lens' ContactGroupsDelete (Maybe Bool)
cgdDeleteContacts
  = lens _cgdDeleteContacts
      (\ s a -> s{_cgdDeleteContacts = a})

-- | The resource name of the contact group to delete.
cgdResourceName :: Lens' ContactGroupsDelete Text
cgdResourceName
  = lens _cgdResourceName
      (\ s a -> s{_cgdResourceName = a})

-- | OAuth access token.
cgdAccessToken :: Lens' ContactGroupsDelete (Maybe Text)
cgdAccessToken
  = lens _cgdAccessToken
      (\ s a -> s{_cgdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cgdUploadType :: Lens' ContactGroupsDelete (Maybe Text)
cgdUploadType
  = lens _cgdUploadType
      (\ s a -> s{_cgdUploadType = a})

-- | JSONP
cgdCallback :: Lens' ContactGroupsDelete (Maybe Text)
cgdCallback
  = lens _cgdCallback (\ s a -> s{_cgdCallback = a})

instance GoogleRequest ContactGroupsDelete where
        type Rs ContactGroupsDelete = Empty
        type Scopes ContactGroupsDelete =
             '["https://www.googleapis.com/auth/contacts"]
        requestClient ContactGroupsDelete'{..}
          = go _cgdResourceName _cgdXgafv _cgdUploadProtocol
              _cgdDeleteContacts
              _cgdAccessToken
              _cgdUploadType
              _cgdCallback
              (Just AltJSON)
              peopleService
          where go
                  = buildClient
                      (Proxy :: Proxy ContactGroupsDeleteResource)
                      mempty
