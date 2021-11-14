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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Listings.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all localized store listings.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.listings.list@.
module Network.Google.Resource.AndroidPublisher.Edits.Listings.List
    (
    -- * REST Resource
      EditsListingsListResource

    -- * Creating a Request
    , editsListingsList
    , EditsListingsList

    -- * Request Lenses
    , ellXgafv
    , ellUploadProtocol
    , ellPackageName
    , ellAccessToken
    , ellUploadType
    , ellEditId
    , ellCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.listings.list@ method which the
-- 'EditsListingsList' request conforms to.
type EditsListingsListResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "listings" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListingsListResponse

-- | Lists all localized store listings.
--
-- /See:/ 'editsListingsList' smart constructor.
data EditsListingsList =
  EditsListingsList'
    { _ellXgafv :: !(Maybe Xgafv)
    , _ellUploadProtocol :: !(Maybe Text)
    , _ellPackageName :: !Text
    , _ellAccessToken :: !(Maybe Text)
    , _ellUploadType :: !(Maybe Text)
    , _ellEditId :: !Text
    , _ellCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsListingsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ellXgafv'
--
-- * 'ellUploadProtocol'
--
-- * 'ellPackageName'
--
-- * 'ellAccessToken'
--
-- * 'ellUploadType'
--
-- * 'ellEditId'
--
-- * 'ellCallback'
editsListingsList
    :: Text -- ^ 'ellPackageName'
    -> Text -- ^ 'ellEditId'
    -> EditsListingsList
editsListingsList pEllPackageName_ pEllEditId_ =
  EditsListingsList'
    { _ellXgafv = Nothing
    , _ellUploadProtocol = Nothing
    , _ellPackageName = pEllPackageName_
    , _ellAccessToken = Nothing
    , _ellUploadType = Nothing
    , _ellEditId = pEllEditId_
    , _ellCallback = Nothing
    }


-- | V1 error format.
ellXgafv :: Lens' EditsListingsList (Maybe Xgafv)
ellXgafv = lens _ellXgafv (\ s a -> s{_ellXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ellUploadProtocol :: Lens' EditsListingsList (Maybe Text)
ellUploadProtocol
  = lens _ellUploadProtocol
      (\ s a -> s{_ellUploadProtocol = a})

-- | Package name of the app.
ellPackageName :: Lens' EditsListingsList Text
ellPackageName
  = lens _ellPackageName
      (\ s a -> s{_ellPackageName = a})

-- | OAuth access token.
ellAccessToken :: Lens' EditsListingsList (Maybe Text)
ellAccessToken
  = lens _ellAccessToken
      (\ s a -> s{_ellAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ellUploadType :: Lens' EditsListingsList (Maybe Text)
ellUploadType
  = lens _ellUploadType
      (\ s a -> s{_ellUploadType = a})

-- | Identifier of the edit.
ellEditId :: Lens' EditsListingsList Text
ellEditId
  = lens _ellEditId (\ s a -> s{_ellEditId = a})

-- | JSONP
ellCallback :: Lens' EditsListingsList (Maybe Text)
ellCallback
  = lens _ellCallback (\ s a -> s{_ellCallback = a})

instance GoogleRequest EditsListingsList where
        type Rs EditsListingsList = ListingsListResponse
        type Scopes EditsListingsList =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsListingsList'{..}
          = go _ellPackageName _ellEditId _ellXgafv
              _ellUploadProtocol
              _ellAccessToken
              _ellUploadType
              _ellCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsListingsListResource)
                      mempty
