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
-- Module      : Network.Google.Resource.Content.Collectionstatuses.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the status of a collection from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.collectionstatuses.get@.
module Network.Google.Resource.Content.Collectionstatuses.Get
    (
    -- * REST Resource
      CollectionstatusesGetResource

    -- * Creating a Request
    , collectionstatusesGet
    , CollectionstatusesGet

    -- * Request Lenses
    , cXgafv
    , cMerchantId
    , cUploadProtocol
    , cAccessToken
    , cCollectionId
    , cUploadType
    , cCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.collectionstatuses.get@ method which the
-- 'CollectionstatusesGet' request conforms to.
type CollectionstatusesGetResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "collectionstatuses" :>
             Capture "collectionId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] CollectionStatus

-- | Gets the status of a collection from your Merchant Center account.
--
-- /See:/ 'collectionstatusesGet' smart constructor.
data CollectionstatusesGet =
  CollectionstatusesGet'
    { _cXgafv :: !(Maybe Xgafv)
    , _cMerchantId :: !(Textual Int64)
    , _cUploadProtocol :: !(Maybe Text)
    , _cAccessToken :: !(Maybe Text)
    , _cCollectionId :: !Text
    , _cUploadType :: !(Maybe Text)
    , _cCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CollectionstatusesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cXgafv'
--
-- * 'cMerchantId'
--
-- * 'cUploadProtocol'
--
-- * 'cAccessToken'
--
-- * 'cCollectionId'
--
-- * 'cUploadType'
--
-- * 'cCallback'
collectionstatusesGet
    :: Int64 -- ^ 'cMerchantId'
    -> Text -- ^ 'cCollectionId'
    -> CollectionstatusesGet
collectionstatusesGet pCMerchantId_ pCCollectionId_ =
  CollectionstatusesGet'
    { _cXgafv = Nothing
    , _cMerchantId = _Coerce # pCMerchantId_
    , _cUploadProtocol = Nothing
    , _cAccessToken = Nothing
    , _cCollectionId = pCCollectionId_
    , _cUploadType = Nothing
    , _cCallback = Nothing
    }


-- | V1 error format.
cXgafv :: Lens' CollectionstatusesGet (Maybe Xgafv)
cXgafv = lens _cXgafv (\ s a -> s{_cXgafv = a})

-- | Required. The ID of the account that contains the collection. This
-- account cannot be a multi-client account.
cMerchantId :: Lens' CollectionstatusesGet Int64
cMerchantId
  = lens _cMerchantId (\ s a -> s{_cMerchantId = a}) .
      _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cUploadProtocol :: Lens' CollectionstatusesGet (Maybe Text)
cUploadProtocol
  = lens _cUploadProtocol
      (\ s a -> s{_cUploadProtocol = a})

-- | OAuth access token.
cAccessToken :: Lens' CollectionstatusesGet (Maybe Text)
cAccessToken
  = lens _cAccessToken (\ s a -> s{_cAccessToken = a})

-- | Required. The collectionId of the collection. CollectionId is the same
-- as the REST ID of the collection.
cCollectionId :: Lens' CollectionstatusesGet Text
cCollectionId
  = lens _cCollectionId
      (\ s a -> s{_cCollectionId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cUploadType :: Lens' CollectionstatusesGet (Maybe Text)
cUploadType
  = lens _cUploadType (\ s a -> s{_cUploadType = a})

-- | JSONP
cCallback :: Lens' CollectionstatusesGet (Maybe Text)
cCallback
  = lens _cCallback (\ s a -> s{_cCallback = a})

instance GoogleRequest CollectionstatusesGet where
        type Rs CollectionstatusesGet = CollectionStatus
        type Scopes CollectionstatusesGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient CollectionstatusesGet'{..}
          = go _cMerchantId _cCollectionId _cXgafv
              _cUploadProtocol
              _cAccessToken
              _cUploadType
              _cCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy CollectionstatusesGetResource)
                      mempty
