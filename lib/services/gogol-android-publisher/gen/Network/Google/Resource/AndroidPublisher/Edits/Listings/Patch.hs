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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Listings.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches a localized store listing.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.listings.patch@.
module Network.Google.Resource.AndroidPublisher.Edits.Listings.Patch
    (
    -- * REST Resource
      EditsListingsPatchResource

    -- * Creating a Request
    , editsListingsPatch
    , EditsListingsPatch

    -- * Request Lenses
    , elpXgafv
    , elpUploadProtocol
    , elpPackageName
    , elpAccessToken
    , elpUploadType
    , elpPayload
    , elpLanguage
    , elpEditId
    , elpCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.listings.patch@ method which the
-- 'EditsListingsPatch' request conforms to.
type EditsListingsPatchResource =
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
                                 ReqBody '[JSON] Listing :>
                                   Patch '[JSON] Listing

-- | Patches a localized store listing.
--
-- /See:/ 'editsListingsPatch' smart constructor.
data EditsListingsPatch =
  EditsListingsPatch'
    { _elpXgafv :: !(Maybe Xgafv)
    , _elpUploadProtocol :: !(Maybe Text)
    , _elpPackageName :: !Text
    , _elpAccessToken :: !(Maybe Text)
    , _elpUploadType :: !(Maybe Text)
    , _elpPayload :: !Listing
    , _elpLanguage :: !Text
    , _elpEditId :: !Text
    , _elpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsListingsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elpXgafv'
--
-- * 'elpUploadProtocol'
--
-- * 'elpPackageName'
--
-- * 'elpAccessToken'
--
-- * 'elpUploadType'
--
-- * 'elpPayload'
--
-- * 'elpLanguage'
--
-- * 'elpEditId'
--
-- * 'elpCallback'
editsListingsPatch
    :: Text -- ^ 'elpPackageName'
    -> Listing -- ^ 'elpPayload'
    -> Text -- ^ 'elpLanguage'
    -> Text -- ^ 'elpEditId'
    -> EditsListingsPatch
editsListingsPatch pElpPackageName_ pElpPayload_ pElpLanguage_ pElpEditId_ =
  EditsListingsPatch'
    { _elpXgafv = Nothing
    , _elpUploadProtocol = Nothing
    , _elpPackageName = pElpPackageName_
    , _elpAccessToken = Nothing
    , _elpUploadType = Nothing
    , _elpPayload = pElpPayload_
    , _elpLanguage = pElpLanguage_
    , _elpEditId = pElpEditId_
    , _elpCallback = Nothing
    }


-- | V1 error format.
elpXgafv :: Lens' EditsListingsPatch (Maybe Xgafv)
elpXgafv = lens _elpXgafv (\ s a -> s{_elpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
elpUploadProtocol :: Lens' EditsListingsPatch (Maybe Text)
elpUploadProtocol
  = lens _elpUploadProtocol
      (\ s a -> s{_elpUploadProtocol = a})

-- | Package name of the app.
elpPackageName :: Lens' EditsListingsPatch Text
elpPackageName
  = lens _elpPackageName
      (\ s a -> s{_elpPackageName = a})

-- | OAuth access token.
elpAccessToken :: Lens' EditsListingsPatch (Maybe Text)
elpAccessToken
  = lens _elpAccessToken
      (\ s a -> s{_elpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
elpUploadType :: Lens' EditsListingsPatch (Maybe Text)
elpUploadType
  = lens _elpUploadType
      (\ s a -> s{_elpUploadType = a})

-- | Multipart request metadata.
elpPayload :: Lens' EditsListingsPatch Listing
elpPayload
  = lens _elpPayload (\ s a -> s{_elpPayload = a})

-- | Language localization code (a BCP-47 language tag; for example,
-- \"de-AT\" for Austrian German).
elpLanguage :: Lens' EditsListingsPatch Text
elpLanguage
  = lens _elpLanguage (\ s a -> s{_elpLanguage = a})

-- | Identifier of the edit.
elpEditId :: Lens' EditsListingsPatch Text
elpEditId
  = lens _elpEditId (\ s a -> s{_elpEditId = a})

-- | JSONP
elpCallback :: Lens' EditsListingsPatch (Maybe Text)
elpCallback
  = lens _elpCallback (\ s a -> s{_elpCallback = a})

instance GoogleRequest EditsListingsPatch where
        type Rs EditsListingsPatch = Listing
        type Scopes EditsListingsPatch =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsListingsPatch'{..}
          = go _elpPackageName _elpEditId _elpLanguage
              _elpXgafv
              _elpUploadProtocol
              _elpAccessToken
              _elpUploadType
              _elpCallback
              (Just AltJSON)
              _elpPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsListingsPatchResource)
                      mempty
