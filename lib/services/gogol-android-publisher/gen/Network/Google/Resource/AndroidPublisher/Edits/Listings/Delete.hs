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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Listings.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a localized store listing.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.listings.delete@.
module Network.Google.Resource.AndroidPublisher.Edits.Listings.Delete
    (
    -- * REST Resource
      EditsListingsDeleteResource

    -- * Creating a Request
    , editsListingsDelete
    , EditsListingsDelete

    -- * Request Lenses
    , eldXgafv
    , eldUploadProtocol
    , eldPackageName
    , eldAccessToken
    , eldUploadType
    , eldLanguage
    , eldEditId
    , eldCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.listings.delete@ method which the
-- 'EditsListingsDelete' request conforms to.
type EditsListingsDeleteResource =
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
                               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a localized store listing.
--
-- /See:/ 'editsListingsDelete' smart constructor.
data EditsListingsDelete =
  EditsListingsDelete'
    { _eldXgafv :: !(Maybe Xgafv)
    , _eldUploadProtocol :: !(Maybe Text)
    , _eldPackageName :: !Text
    , _eldAccessToken :: !(Maybe Text)
    , _eldUploadType :: !(Maybe Text)
    , _eldLanguage :: !Text
    , _eldEditId :: !Text
    , _eldCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsListingsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eldXgafv'
--
-- * 'eldUploadProtocol'
--
-- * 'eldPackageName'
--
-- * 'eldAccessToken'
--
-- * 'eldUploadType'
--
-- * 'eldLanguage'
--
-- * 'eldEditId'
--
-- * 'eldCallback'
editsListingsDelete
    :: Text -- ^ 'eldPackageName'
    -> Text -- ^ 'eldLanguage'
    -> Text -- ^ 'eldEditId'
    -> EditsListingsDelete
editsListingsDelete pEldPackageName_ pEldLanguage_ pEldEditId_ =
  EditsListingsDelete'
    { _eldXgafv = Nothing
    , _eldUploadProtocol = Nothing
    , _eldPackageName = pEldPackageName_
    , _eldAccessToken = Nothing
    , _eldUploadType = Nothing
    , _eldLanguage = pEldLanguage_
    , _eldEditId = pEldEditId_
    , _eldCallback = Nothing
    }


-- | V1 error format.
eldXgafv :: Lens' EditsListingsDelete (Maybe Xgafv)
eldXgafv = lens _eldXgafv (\ s a -> s{_eldXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eldUploadProtocol :: Lens' EditsListingsDelete (Maybe Text)
eldUploadProtocol
  = lens _eldUploadProtocol
      (\ s a -> s{_eldUploadProtocol = a})

-- | Package name of the app.
eldPackageName :: Lens' EditsListingsDelete Text
eldPackageName
  = lens _eldPackageName
      (\ s a -> s{_eldPackageName = a})

-- | OAuth access token.
eldAccessToken :: Lens' EditsListingsDelete (Maybe Text)
eldAccessToken
  = lens _eldAccessToken
      (\ s a -> s{_eldAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eldUploadType :: Lens' EditsListingsDelete (Maybe Text)
eldUploadType
  = lens _eldUploadType
      (\ s a -> s{_eldUploadType = a})

-- | Language localization code (a BCP-47 language tag; for example,
-- \"de-AT\" for Austrian German).
eldLanguage :: Lens' EditsListingsDelete Text
eldLanguage
  = lens _eldLanguage (\ s a -> s{_eldLanguage = a})

-- | Identifier of the edit.
eldEditId :: Lens' EditsListingsDelete Text
eldEditId
  = lens _eldEditId (\ s a -> s{_eldEditId = a})

-- | JSONP
eldCallback :: Lens' EditsListingsDelete (Maybe Text)
eldCallback
  = lens _eldCallback (\ s a -> s{_eldCallback = a})

instance GoogleRequest EditsListingsDelete where
        type Rs EditsListingsDelete = ()
        type Scopes EditsListingsDelete =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsListingsDelete'{..}
          = go _eldPackageName _eldEditId _eldLanguage
              _eldXgafv
              _eldUploadProtocol
              _eldAccessToken
              _eldUploadType
              _eldCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsListingsDeleteResource)
                      mempty
