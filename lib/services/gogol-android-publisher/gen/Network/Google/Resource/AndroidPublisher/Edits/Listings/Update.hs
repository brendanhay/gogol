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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Listings.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates a localized store listing.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.listings.update@.
module Network.Google.Resource.AndroidPublisher.Edits.Listings.Update
    (
    -- * REST Resource
      EditsListingsUpdateResource

    -- * Creating a Request
    , editsListingsUpdate
    , EditsListingsUpdate

    -- * Request Lenses
    , eluXgafv
    , eluUploadProtocol
    , eluPackageName
    , eluAccessToken
    , eluUploadType
    , eluPayload
    , eluLanguage
    , eluEditId
    , eluCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.listings.update@ method which the
-- 'EditsListingsUpdate' request conforms to.
type EditsListingsUpdateResource =
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
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Listing :> Put '[JSON] Listing

-- | Creates or updates a localized store listing.
--
-- /See:/ 'editsListingsUpdate' smart constructor.
data EditsListingsUpdate =
  EditsListingsUpdate'
    { _eluXgafv :: !(Maybe Xgafv)
    , _eluUploadProtocol :: !(Maybe Text)
    , _eluPackageName :: !Text
    , _eluAccessToken :: !(Maybe Text)
    , _eluUploadType :: !(Maybe Text)
    , _eluPayload :: !Listing
    , _eluLanguage :: !Text
    , _eluEditId :: !Text
    , _eluCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsListingsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eluXgafv'
--
-- * 'eluUploadProtocol'
--
-- * 'eluPackageName'
--
-- * 'eluAccessToken'
--
-- * 'eluUploadType'
--
-- * 'eluPayload'
--
-- * 'eluLanguage'
--
-- * 'eluEditId'
--
-- * 'eluCallback'
editsListingsUpdate
    :: Text -- ^ 'eluPackageName'
    -> Listing -- ^ 'eluPayload'
    -> Text -- ^ 'eluLanguage'
    -> Text -- ^ 'eluEditId'
    -> EditsListingsUpdate
editsListingsUpdate pEluPackageName_ pEluPayload_ pEluLanguage_ pEluEditId_ =
  EditsListingsUpdate'
    { _eluXgafv = Nothing
    , _eluUploadProtocol = Nothing
    , _eluPackageName = pEluPackageName_
    , _eluAccessToken = Nothing
    , _eluUploadType = Nothing
    , _eluPayload = pEluPayload_
    , _eluLanguage = pEluLanguage_
    , _eluEditId = pEluEditId_
    , _eluCallback = Nothing
    }


-- | V1 error format.
eluXgafv :: Lens' EditsListingsUpdate (Maybe Xgafv)
eluXgafv = lens _eluXgafv (\ s a -> s{_eluXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eluUploadProtocol :: Lens' EditsListingsUpdate (Maybe Text)
eluUploadProtocol
  = lens _eluUploadProtocol
      (\ s a -> s{_eluUploadProtocol = a})

-- | Package name of the app.
eluPackageName :: Lens' EditsListingsUpdate Text
eluPackageName
  = lens _eluPackageName
      (\ s a -> s{_eluPackageName = a})

-- | OAuth access token.
eluAccessToken :: Lens' EditsListingsUpdate (Maybe Text)
eluAccessToken
  = lens _eluAccessToken
      (\ s a -> s{_eluAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eluUploadType :: Lens' EditsListingsUpdate (Maybe Text)
eluUploadType
  = lens _eluUploadType
      (\ s a -> s{_eluUploadType = a})

-- | Multipart request metadata.
eluPayload :: Lens' EditsListingsUpdate Listing
eluPayload
  = lens _eluPayload (\ s a -> s{_eluPayload = a})

-- | Language localization code (a BCP-47 language tag; for example,
-- \"de-AT\" for Austrian German).
eluLanguage :: Lens' EditsListingsUpdate Text
eluLanguage
  = lens _eluLanguage (\ s a -> s{_eluLanguage = a})

-- | Identifier of the edit.
eluEditId :: Lens' EditsListingsUpdate Text
eluEditId
  = lens _eluEditId (\ s a -> s{_eluEditId = a})

-- | JSONP
eluCallback :: Lens' EditsListingsUpdate (Maybe Text)
eluCallback
  = lens _eluCallback (\ s a -> s{_eluCallback = a})

instance GoogleRequest EditsListingsUpdate where
        type Rs EditsListingsUpdate = Listing
        type Scopes EditsListingsUpdate =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsListingsUpdate'{..}
          = go _eluPackageName _eluEditId _eluLanguage
              _eluXgafv
              _eluUploadProtocol
              _eluAccessToken
              _eluUploadType
              _eluCallback
              (Just AltJSON)
              _eluPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsListingsUpdateResource)
                      mempty
