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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Listings.Deleteall
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes all store listings.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.listings.deleteall@.
module Network.Google.Resource.AndroidPublisher.Edits.Listings.Deleteall
    (
    -- * REST Resource
      EditsListingsDeleteallResource

    -- * Creating a Request
    , editsListingsDeleteall
    , EditsListingsDeleteall

    -- * Request Lenses
    , eldlXgafv
    , eldlUploadProtocol
    , eldlPackageName
    , eldlAccessToken
    , eldlUploadType
    , eldlEditId
    , eldlCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.listings.deleteall@ method which the
-- 'EditsListingsDeleteall' request conforms to.
type EditsListingsDeleteallResource =
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
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes all store listings.
--
-- /See:/ 'editsListingsDeleteall' smart constructor.
data EditsListingsDeleteall =
  EditsListingsDeleteall'
    { _eldlXgafv :: !(Maybe Xgafv)
    , _eldlUploadProtocol :: !(Maybe Text)
    , _eldlPackageName :: !Text
    , _eldlAccessToken :: !(Maybe Text)
    , _eldlUploadType :: !(Maybe Text)
    , _eldlEditId :: !Text
    , _eldlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsListingsDeleteall' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eldlXgafv'
--
-- * 'eldlUploadProtocol'
--
-- * 'eldlPackageName'
--
-- * 'eldlAccessToken'
--
-- * 'eldlUploadType'
--
-- * 'eldlEditId'
--
-- * 'eldlCallback'
editsListingsDeleteall
    :: Text -- ^ 'eldlPackageName'
    -> Text -- ^ 'eldlEditId'
    -> EditsListingsDeleteall
editsListingsDeleteall pEldlPackageName_ pEldlEditId_ =
  EditsListingsDeleteall'
    { _eldlXgafv = Nothing
    , _eldlUploadProtocol = Nothing
    , _eldlPackageName = pEldlPackageName_
    , _eldlAccessToken = Nothing
    , _eldlUploadType = Nothing
    , _eldlEditId = pEldlEditId_
    , _eldlCallback = Nothing
    }


-- | V1 error format.
eldlXgafv :: Lens' EditsListingsDeleteall (Maybe Xgafv)
eldlXgafv
  = lens _eldlXgafv (\ s a -> s{_eldlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eldlUploadProtocol :: Lens' EditsListingsDeleteall (Maybe Text)
eldlUploadProtocol
  = lens _eldlUploadProtocol
      (\ s a -> s{_eldlUploadProtocol = a})

-- | Package name of the app.
eldlPackageName :: Lens' EditsListingsDeleteall Text
eldlPackageName
  = lens _eldlPackageName
      (\ s a -> s{_eldlPackageName = a})

-- | OAuth access token.
eldlAccessToken :: Lens' EditsListingsDeleteall (Maybe Text)
eldlAccessToken
  = lens _eldlAccessToken
      (\ s a -> s{_eldlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eldlUploadType :: Lens' EditsListingsDeleteall (Maybe Text)
eldlUploadType
  = lens _eldlUploadType
      (\ s a -> s{_eldlUploadType = a})

-- | Identifier of the edit.
eldlEditId :: Lens' EditsListingsDeleteall Text
eldlEditId
  = lens _eldlEditId (\ s a -> s{_eldlEditId = a})

-- | JSONP
eldlCallback :: Lens' EditsListingsDeleteall (Maybe Text)
eldlCallback
  = lens _eldlCallback (\ s a -> s{_eldlCallback = a})

instance GoogleRequest EditsListingsDeleteall where
        type Rs EditsListingsDeleteall = ()
        type Scopes EditsListingsDeleteall =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsListingsDeleteall'{..}
          = go _eldlPackageName _eldlEditId _eldlXgafv
              _eldlUploadProtocol
              _eldlAccessToken
              _eldlUploadType
              _eldlCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsListingsDeleteallResource)
                      mempty
