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
-- Module      : Network.Google.Resource.People.People.DeleteContact
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a contact person. Any non-contact data will not be deleted.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.deleteContact@.
module Network.Google.Resource.People.People.DeleteContact
    (
    -- * REST Resource
      PeopleDeleteContactResource

    -- * Creating a Request
    , peopleDeleteContact
    , PeopleDeleteContact

    -- * Request Lenses
    , pdcXgafv
    , pdcUploadProtocol
    , pdcResourceName
    , pdcAccessToken
    , pdcUploadType
    , pdcCallback
    ) where

import           Network.Google.People.Types
import           Network.Google.Prelude

-- | A resource alias for @people.people.deleteContact@ method which the
-- 'PeopleDeleteContact' request conforms to.
type PeopleDeleteContactResource =
     "v1" :>
       CaptureMode "resourceName" "deleteContact" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Delete a contact person. Any non-contact data will not be deleted.
--
-- /See:/ 'peopleDeleteContact' smart constructor.
data PeopleDeleteContact =
  PeopleDeleteContact'
    { _pdcXgafv          :: !(Maybe Xgafv)
    , _pdcUploadProtocol :: !(Maybe Text)
    , _pdcResourceName   :: !Text
    , _pdcAccessToken    :: !(Maybe Text)
    , _pdcUploadType     :: !(Maybe Text)
    , _pdcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PeopleDeleteContact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdcXgafv'
--
-- * 'pdcUploadProtocol'
--
-- * 'pdcResourceName'
--
-- * 'pdcAccessToken'
--
-- * 'pdcUploadType'
--
-- * 'pdcCallback'
peopleDeleteContact
    :: Text -- ^ 'pdcResourceName'
    -> PeopleDeleteContact
peopleDeleteContact pPdcResourceName_ =
  PeopleDeleteContact'
    { _pdcXgafv = Nothing
    , _pdcUploadProtocol = Nothing
    , _pdcResourceName = pPdcResourceName_
    , _pdcAccessToken = Nothing
    , _pdcUploadType = Nothing
    , _pdcCallback = Nothing
    }


-- | V1 error format.
pdcXgafv :: Lens' PeopleDeleteContact (Maybe Xgafv)
pdcXgafv = lens _pdcXgafv (\ s a -> s{_pdcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdcUploadProtocol :: Lens' PeopleDeleteContact (Maybe Text)
pdcUploadProtocol
  = lens _pdcUploadProtocol
      (\ s a -> s{_pdcUploadProtocol = a})

-- | The resource name of the contact to delete.
pdcResourceName :: Lens' PeopleDeleteContact Text
pdcResourceName
  = lens _pdcResourceName
      (\ s a -> s{_pdcResourceName = a})

-- | OAuth access token.
pdcAccessToken :: Lens' PeopleDeleteContact (Maybe Text)
pdcAccessToken
  = lens _pdcAccessToken
      (\ s a -> s{_pdcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdcUploadType :: Lens' PeopleDeleteContact (Maybe Text)
pdcUploadType
  = lens _pdcUploadType
      (\ s a -> s{_pdcUploadType = a})

-- | JSONP
pdcCallback :: Lens' PeopleDeleteContact (Maybe Text)
pdcCallback
  = lens _pdcCallback (\ s a -> s{_pdcCallback = a})

instance GoogleRequest PeopleDeleteContact where
        type Rs PeopleDeleteContact = Empty
        type Scopes PeopleDeleteContact =
             '["https://www.googleapis.com/auth/contacts"]
        requestClient PeopleDeleteContact'{..}
          = go _pdcResourceName _pdcXgafv _pdcUploadProtocol
              _pdcAccessToken
              _pdcUploadType
              _pdcCallback
              (Just AltJSON)
              peopleService
          where go
                  = buildClient
                      (Proxy :: Proxy PeopleDeleteContactResource)
                      mempty
