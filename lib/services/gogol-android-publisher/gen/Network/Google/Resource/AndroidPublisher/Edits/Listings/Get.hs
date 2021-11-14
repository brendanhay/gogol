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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Listings.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a localized store listing.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.listings.get@.
module Network.Google.Resource.AndroidPublisher.Edits.Listings.Get
    (
    -- * REST Resource
      EditsListingsGetResource

    -- * Creating a Request
    , editsListingsGet
    , EditsListingsGet

    -- * Request Lenses
    , elgXgafv
    , elgUploadProtocol
    , elgPackageName
    , elgAccessToken
    , elgUploadType
    , elgLanguage
    , elgEditId
    , elgCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.listings.get@ method which the
-- 'EditsListingsGet' request conforms to.
type EditsListingsGetResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "listings" :>
                   Capture "language" Text :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Get '[JSON] Listing

-- | Gets a localized store listing.
--
-- /See:/ 'editsListingsGet' smart constructor.
data EditsListingsGet =
  EditsListingsGet'
    { _elgXgafv :: !(Maybe Xgafv)
    , _elgUploadProtocol :: !(Maybe Text)
    , _elgPackageName :: !Text
    , _elgAccessToken :: !(Maybe Text)
    , _elgUploadType :: !(Maybe Text)
    , _elgLanguage :: !Text
    , _elgEditId :: !Text
    , _elgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsListingsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elgXgafv'
--
-- * 'elgUploadProtocol'
--
-- * 'elgPackageName'
--
-- * 'elgAccessToken'
--
-- * 'elgUploadType'
--
-- * 'elgLanguage'
--
-- * 'elgEditId'
--
-- * 'elgCallback'
editsListingsGet
    :: Text -- ^ 'elgPackageName'
    -> Text -- ^ 'elgLanguage'
    -> Text -- ^ 'elgEditId'
    -> EditsListingsGet
editsListingsGet pElgPackageName_ pElgLanguage_ pElgEditId_ =
  EditsListingsGet'
    { _elgXgafv = Nothing
    , _elgUploadProtocol = Nothing
    , _elgPackageName = pElgPackageName_
    , _elgAccessToken = Nothing
    , _elgUploadType = Nothing
    , _elgLanguage = pElgLanguage_
    , _elgEditId = pElgEditId_
    , _elgCallback = Nothing
    }


-- | V1 error format.
elgXgafv :: Lens' EditsListingsGet (Maybe Xgafv)
elgXgafv = lens _elgXgafv (\ s a -> s{_elgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
elgUploadProtocol :: Lens' EditsListingsGet (Maybe Text)
elgUploadProtocol
  = lens _elgUploadProtocol
      (\ s a -> s{_elgUploadProtocol = a})

-- | Package name of the app.
elgPackageName :: Lens' EditsListingsGet Text
elgPackageName
  = lens _elgPackageName
      (\ s a -> s{_elgPackageName = a})

-- | OAuth access token.
elgAccessToken :: Lens' EditsListingsGet (Maybe Text)
elgAccessToken
  = lens _elgAccessToken
      (\ s a -> s{_elgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
elgUploadType :: Lens' EditsListingsGet (Maybe Text)
elgUploadType
  = lens _elgUploadType
      (\ s a -> s{_elgUploadType = a})

-- | Language localization code (a BCP-47 language tag; for example,
-- \"de-AT\" for Austrian German).
elgLanguage :: Lens' EditsListingsGet Text
elgLanguage
  = lens _elgLanguage (\ s a -> s{_elgLanguage = a})

-- | Identifier of the edit.
elgEditId :: Lens' EditsListingsGet Text
elgEditId
  = lens _elgEditId (\ s a -> s{_elgEditId = a})

-- | JSONP
elgCallback :: Lens' EditsListingsGet (Maybe Text)
elgCallback
  = lens _elgCallback (\ s a -> s{_elgCallback = a})

instance GoogleRequest EditsListingsGet where
        type Rs EditsListingsGet = Listing
        type Scopes EditsListingsGet =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsListingsGet'{..}
          = go _elgPackageName _elgEditId _elgLanguage
              _elgXgafv
              _elgUploadProtocol
              _elgAccessToken
              _elgUploadType
              _elgCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsListingsGetResource)
                      mempty
