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
-- Module      : Network.Google.Resource.People.ContactGroups.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new contact group owned by the authenticated user.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.contactGroups.create@.
module Network.Google.Resource.People.ContactGroups.Create
    (
    -- * REST Resource
      ContactGroupsCreateResource

    -- * Creating a Request
    , contactGroupsCreate
    , ContactGroupsCreate

    -- * Request Lenses
    , cgcXgafv
    , cgcUploadProtocol
    , cgcAccessToken
    , cgcUploadType
    , cgcPayload
    , cgcCallback
    ) where

import           Network.Google.People.Types
import           Network.Google.Prelude

-- | A resource alias for @people.contactGroups.create@ method which the
-- 'ContactGroupsCreate' request conforms to.
type ContactGroupsCreateResource =
     "v1" :>
       "contactGroups" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] CreateContactGroupRequest :>
                       Post '[JSON] ContactGroup

-- | Create a new contact group owned by the authenticated user.
--
-- /See:/ 'contactGroupsCreate' smart constructor.
data ContactGroupsCreate =
  ContactGroupsCreate'
    { _cgcXgafv          :: !(Maybe Xgafv)
    , _cgcUploadProtocol :: !(Maybe Text)
    , _cgcAccessToken    :: !(Maybe Text)
    , _cgcUploadType     :: !(Maybe Text)
    , _cgcPayload        :: !CreateContactGroupRequest
    , _cgcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContactGroupsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgcXgafv'
--
-- * 'cgcUploadProtocol'
--
-- * 'cgcAccessToken'
--
-- * 'cgcUploadType'
--
-- * 'cgcPayload'
--
-- * 'cgcCallback'
contactGroupsCreate
    :: CreateContactGroupRequest -- ^ 'cgcPayload'
    -> ContactGroupsCreate
contactGroupsCreate pCgcPayload_ =
  ContactGroupsCreate'
    { _cgcXgafv = Nothing
    , _cgcUploadProtocol = Nothing
    , _cgcAccessToken = Nothing
    , _cgcUploadType = Nothing
    , _cgcPayload = pCgcPayload_
    , _cgcCallback = Nothing
    }


-- | V1 error format.
cgcXgafv :: Lens' ContactGroupsCreate (Maybe Xgafv)
cgcXgafv = lens _cgcXgafv (\ s a -> s{_cgcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cgcUploadProtocol :: Lens' ContactGroupsCreate (Maybe Text)
cgcUploadProtocol
  = lens _cgcUploadProtocol
      (\ s a -> s{_cgcUploadProtocol = a})

-- | OAuth access token.
cgcAccessToken :: Lens' ContactGroupsCreate (Maybe Text)
cgcAccessToken
  = lens _cgcAccessToken
      (\ s a -> s{_cgcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cgcUploadType :: Lens' ContactGroupsCreate (Maybe Text)
cgcUploadType
  = lens _cgcUploadType
      (\ s a -> s{_cgcUploadType = a})

-- | Multipart request metadata.
cgcPayload :: Lens' ContactGroupsCreate CreateContactGroupRequest
cgcPayload
  = lens _cgcPayload (\ s a -> s{_cgcPayload = a})

-- | JSONP
cgcCallback :: Lens' ContactGroupsCreate (Maybe Text)
cgcCallback
  = lens _cgcCallback (\ s a -> s{_cgcCallback = a})

instance GoogleRequest ContactGroupsCreate where
        type Rs ContactGroupsCreate = ContactGroup
        type Scopes ContactGroupsCreate =
             '["https://www.googleapis.com/auth/contacts"]
        requestClient ContactGroupsCreate'{..}
          = go _cgcXgafv _cgcUploadProtocol _cgcAccessToken
              _cgcUploadType
              _cgcCallback
              (Just AltJSON)
              _cgcPayload
              peopleService
          where go
                  = buildClient
                      (Proxy :: Proxy ContactGroupsCreateResource)
                      mempty
