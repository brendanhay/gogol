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
-- Module      : Network.Google.Resource.People.People.DeleteContactPhoto
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a contact\'s photo.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.deleteContactPhoto@.
module Network.Google.Resource.People.People.DeleteContactPhoto
    (
    -- * REST Resource
      PeopleDeleteContactPhotoResource

    -- * Creating a Request
    , peopleDeleteContactPhoto
    , PeopleDeleteContactPhoto

    -- * Request Lenses
    , pdcpXgafv
    , pdcpUploadProtocol
    , pdcpResourceName
    , pdcpAccessToken
    , pdcpUploadType
    , pdcpSources
    , pdcpPersonFields
    , pdcpCallback
    ) where

import Network.Google.People.Types
import Network.Google.Prelude

-- | A resource alias for @people.people.deleteContactPhoto@ method which the
-- 'PeopleDeleteContactPhoto' request conforms to.
type PeopleDeleteContactPhotoResource =
     "v1" :>
       CaptureMode "resourceName" "deleteContactPhoto" Text
         :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParams "sources" PeopleDeleteContactPhotoSources
                   :>
                   QueryParam "personFields" GFieldMask :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Delete '[JSON] DeleteContactPhotoResponse

-- | Delete a contact\'s photo.
--
-- /See:/ 'peopleDeleteContactPhoto' smart constructor.
data PeopleDeleteContactPhoto =
  PeopleDeleteContactPhoto'
    { _pdcpXgafv :: !(Maybe Xgafv)
    , _pdcpUploadProtocol :: !(Maybe Text)
    , _pdcpResourceName :: !Text
    , _pdcpAccessToken :: !(Maybe Text)
    , _pdcpUploadType :: !(Maybe Text)
    , _pdcpSources :: !(Maybe [PeopleDeleteContactPhotoSources])
    , _pdcpPersonFields :: !(Maybe GFieldMask)
    , _pdcpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PeopleDeleteContactPhoto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdcpXgafv'
--
-- * 'pdcpUploadProtocol'
--
-- * 'pdcpResourceName'
--
-- * 'pdcpAccessToken'
--
-- * 'pdcpUploadType'
--
-- * 'pdcpSources'
--
-- * 'pdcpPersonFields'
--
-- * 'pdcpCallback'
peopleDeleteContactPhoto
    :: Text -- ^ 'pdcpResourceName'
    -> PeopleDeleteContactPhoto
peopleDeleteContactPhoto pPdcpResourceName_ =
  PeopleDeleteContactPhoto'
    { _pdcpXgafv = Nothing
    , _pdcpUploadProtocol = Nothing
    , _pdcpResourceName = pPdcpResourceName_
    , _pdcpAccessToken = Nothing
    , _pdcpUploadType = Nothing
    , _pdcpSources = Nothing
    , _pdcpPersonFields = Nothing
    , _pdcpCallback = Nothing
    }


-- | V1 error format.
pdcpXgafv :: Lens' PeopleDeleteContactPhoto (Maybe Xgafv)
pdcpXgafv
  = lens _pdcpXgafv (\ s a -> s{_pdcpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdcpUploadProtocol :: Lens' PeopleDeleteContactPhoto (Maybe Text)
pdcpUploadProtocol
  = lens _pdcpUploadProtocol
      (\ s a -> s{_pdcpUploadProtocol = a})

-- | Required. The resource name of the contact whose photo will be deleted.
pdcpResourceName :: Lens' PeopleDeleteContactPhoto Text
pdcpResourceName
  = lens _pdcpResourceName
      (\ s a -> s{_pdcpResourceName = a})

-- | OAuth access token.
pdcpAccessToken :: Lens' PeopleDeleteContactPhoto (Maybe Text)
pdcpAccessToken
  = lens _pdcpAccessToken
      (\ s a -> s{_pdcpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdcpUploadType :: Lens' PeopleDeleteContactPhoto (Maybe Text)
pdcpUploadType
  = lens _pdcpUploadType
      (\ s a -> s{_pdcpUploadType = a})

-- | Optional. A mask of what source types to return. Defaults to
-- READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.
pdcpSources :: Lens' PeopleDeleteContactPhoto [PeopleDeleteContactPhotoSources]
pdcpSources
  = lens _pdcpSources (\ s a -> s{_pdcpSources = a}) .
      _Default
      . _Coerce

-- | Optional. A field mask to restrict which fields on the person are
-- returned. Multiple fields can be specified by separating them with
-- commas. Defaults to empty if not set, which will skip the post mutate
-- get. Valid values are: * addresses * ageRanges * biographies * birthdays
-- * calendarUrls * clientData * coverPhotos * emailAddresses * events *
-- externalIds * genders * imClients * interests * locales * locations *
-- memberships * metadata * miscKeywords * names * nicknames * occupations
-- * organizations * phoneNumbers * photos * relations * sipAddresses *
-- skills * urls * userDefined
pdcpPersonFields :: Lens' PeopleDeleteContactPhoto (Maybe GFieldMask)
pdcpPersonFields
  = lens _pdcpPersonFields
      (\ s a -> s{_pdcpPersonFields = a})

-- | JSONP
pdcpCallback :: Lens' PeopleDeleteContactPhoto (Maybe Text)
pdcpCallback
  = lens _pdcpCallback (\ s a -> s{_pdcpCallback = a})

instance GoogleRequest PeopleDeleteContactPhoto where
        type Rs PeopleDeleteContactPhoto =
             DeleteContactPhotoResponse
        type Scopes PeopleDeleteContactPhoto =
             '["https://www.googleapis.com/auth/contacts"]
        requestClient PeopleDeleteContactPhoto'{..}
          = go _pdcpResourceName _pdcpXgafv _pdcpUploadProtocol
              _pdcpAccessToken
              _pdcpUploadType
              (_pdcpSources ^. _Default)
              _pdcpPersonFields
              _pdcpCallback
              (Just AltJSON)
              peopleService
          where go
                  = buildClient
                      (Proxy :: Proxy PeopleDeleteContactPhotoResource)
                      mempty
