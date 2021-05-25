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
-- Module      : Network.Google.Resource.People.People.UpdateContactPhoto
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a contact\'s photo.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.updateContactPhoto@.
module Network.Google.Resource.People.People.UpdateContactPhoto
    (
    -- * REST Resource
      PeopleUpdateContactPhotoResource

    -- * Creating a Request
    , peopleUpdateContactPhoto
    , PeopleUpdateContactPhoto

    -- * Request Lenses
    , pucpXgafv
    , pucpUploadProtocol
    , pucpResourceName
    , pucpAccessToken
    , pucpUploadType
    , pucpPayload
    , pucpCallback
    ) where

import Network.Google.People.Types
import Network.Google.Prelude

-- | A resource alias for @people.people.updateContactPhoto@ method which the
-- 'PeopleUpdateContactPhoto' request conforms to.
type PeopleUpdateContactPhotoResource =
     "v1" :>
       CaptureMode "resourceName" "updateContactPhoto" Text
         :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UpdateContactPhotoRequest :>
                       Patch '[JSON] UpdateContactPhotoResponse

-- | Update a contact\'s photo.
--
-- /See:/ 'peopleUpdateContactPhoto' smart constructor.
data PeopleUpdateContactPhoto =
  PeopleUpdateContactPhoto'
    { _pucpXgafv :: !(Maybe Xgafv)
    , _pucpUploadProtocol :: !(Maybe Text)
    , _pucpResourceName :: !Text
    , _pucpAccessToken :: !(Maybe Text)
    , _pucpUploadType :: !(Maybe Text)
    , _pucpPayload :: !UpdateContactPhotoRequest
    , _pucpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PeopleUpdateContactPhoto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pucpXgafv'
--
-- * 'pucpUploadProtocol'
--
-- * 'pucpResourceName'
--
-- * 'pucpAccessToken'
--
-- * 'pucpUploadType'
--
-- * 'pucpPayload'
--
-- * 'pucpCallback'
peopleUpdateContactPhoto
    :: Text -- ^ 'pucpResourceName'
    -> UpdateContactPhotoRequest -- ^ 'pucpPayload'
    -> PeopleUpdateContactPhoto
peopleUpdateContactPhoto pPucpResourceName_ pPucpPayload_ =
  PeopleUpdateContactPhoto'
    { _pucpXgafv = Nothing
    , _pucpUploadProtocol = Nothing
    , _pucpResourceName = pPucpResourceName_
    , _pucpAccessToken = Nothing
    , _pucpUploadType = Nothing
    , _pucpPayload = pPucpPayload_
    , _pucpCallback = Nothing
    }


-- | V1 error format.
pucpXgafv :: Lens' PeopleUpdateContactPhoto (Maybe Xgafv)
pucpXgafv
  = lens _pucpXgafv (\ s a -> s{_pucpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pucpUploadProtocol :: Lens' PeopleUpdateContactPhoto (Maybe Text)
pucpUploadProtocol
  = lens _pucpUploadProtocol
      (\ s a -> s{_pucpUploadProtocol = a})

-- | Required. Person resource name
pucpResourceName :: Lens' PeopleUpdateContactPhoto Text
pucpResourceName
  = lens _pucpResourceName
      (\ s a -> s{_pucpResourceName = a})

-- | OAuth access token.
pucpAccessToken :: Lens' PeopleUpdateContactPhoto (Maybe Text)
pucpAccessToken
  = lens _pucpAccessToken
      (\ s a -> s{_pucpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pucpUploadType :: Lens' PeopleUpdateContactPhoto (Maybe Text)
pucpUploadType
  = lens _pucpUploadType
      (\ s a -> s{_pucpUploadType = a})

-- | Multipart request metadata.
pucpPayload :: Lens' PeopleUpdateContactPhoto UpdateContactPhotoRequest
pucpPayload
  = lens _pucpPayload (\ s a -> s{_pucpPayload = a})

-- | JSONP
pucpCallback :: Lens' PeopleUpdateContactPhoto (Maybe Text)
pucpCallback
  = lens _pucpCallback (\ s a -> s{_pucpCallback = a})

instance GoogleRequest PeopleUpdateContactPhoto where
        type Rs PeopleUpdateContactPhoto =
             UpdateContactPhotoResponse
        type Scopes PeopleUpdateContactPhoto =
             '["https://www.googleapis.com/auth/contacts"]
        requestClient PeopleUpdateContactPhoto'{..}
          = go _pucpResourceName _pucpXgafv _pucpUploadProtocol
              _pucpAccessToken
              _pucpUploadType
              _pucpCallback
              (Just AltJSON)
              _pucpPayload
              peopleService
          where go
                  = buildClient
                      (Proxy :: Proxy PeopleUpdateContactPhotoResource)
                      mempty
