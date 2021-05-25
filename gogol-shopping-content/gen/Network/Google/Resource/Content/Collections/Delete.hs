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
-- Module      : Network.Google.Resource.Content.Collections.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a collection from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.collections.delete@.
module Network.Google.Resource.Content.Collections.Delete
    (
    -- * REST Resource
      CollectionsDeleteResource

    -- * Creating a Request
    , collectionsDelete
    , CollectionsDelete

    -- * Request Lenses
    , cdXgafv
    , cdMerchantId
    , cdUploadProtocol
    , cdAccessToken
    , cdCollectionId
    , cdUploadType
    , cdCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.collections.delete@ method which the
-- 'CollectionsDelete' request conforms to.
type CollectionsDeleteResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "collections" :>
             Capture "collectionId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a collection from your Merchant Center account.
--
-- /See:/ 'collectionsDelete' smart constructor.
data CollectionsDelete =
  CollectionsDelete'
    { _cdXgafv :: !(Maybe Xgafv)
    , _cdMerchantId :: !(Textual Int64)
    , _cdUploadProtocol :: !(Maybe Text)
    , _cdAccessToken :: !(Maybe Text)
    , _cdCollectionId :: !Text
    , _cdUploadType :: !(Maybe Text)
    , _cdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CollectionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdXgafv'
--
-- * 'cdMerchantId'
--
-- * 'cdUploadProtocol'
--
-- * 'cdAccessToken'
--
-- * 'cdCollectionId'
--
-- * 'cdUploadType'
--
-- * 'cdCallback'
collectionsDelete
    :: Int64 -- ^ 'cdMerchantId'
    -> Text -- ^ 'cdCollectionId'
    -> CollectionsDelete
collectionsDelete pCdMerchantId_ pCdCollectionId_ =
  CollectionsDelete'
    { _cdXgafv = Nothing
    , _cdMerchantId = _Coerce # pCdMerchantId_
    , _cdUploadProtocol = Nothing
    , _cdAccessToken = Nothing
    , _cdCollectionId = pCdCollectionId_
    , _cdUploadType = Nothing
    , _cdCallback = Nothing
    }


-- | V1 error format.
cdXgafv :: Lens' CollectionsDelete (Maybe Xgafv)
cdXgafv = lens _cdXgafv (\ s a -> s{_cdXgafv = a})

-- | Required. The ID of the account that contains the collection. This
-- account cannot be a multi-client account.
cdMerchantId :: Lens' CollectionsDelete Int64
cdMerchantId
  = lens _cdMerchantId (\ s a -> s{_cdMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cdUploadProtocol :: Lens' CollectionsDelete (Maybe Text)
cdUploadProtocol
  = lens _cdUploadProtocol
      (\ s a -> s{_cdUploadProtocol = a})

-- | OAuth access token.
cdAccessToken :: Lens' CollectionsDelete (Maybe Text)
cdAccessToken
  = lens _cdAccessToken
      (\ s a -> s{_cdAccessToken = a})

-- | Required. The collectionId of the collection. CollectionId is the same
-- as the REST ID of the collection.
cdCollectionId :: Lens' CollectionsDelete Text
cdCollectionId
  = lens _cdCollectionId
      (\ s a -> s{_cdCollectionId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cdUploadType :: Lens' CollectionsDelete (Maybe Text)
cdUploadType
  = lens _cdUploadType (\ s a -> s{_cdUploadType = a})

-- | JSONP
cdCallback :: Lens' CollectionsDelete (Maybe Text)
cdCallback
  = lens _cdCallback (\ s a -> s{_cdCallback = a})

instance GoogleRequest CollectionsDelete where
        type Rs CollectionsDelete = ()
        type Scopes CollectionsDelete =
             '["https://www.googleapis.com/auth/content"]
        requestClient CollectionsDelete'{..}
          = go _cdMerchantId _cdCollectionId _cdXgafv
              _cdUploadProtocol
              _cdAccessToken
              _cdUploadType
              _cdCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy CollectionsDeleteResource)
                      mempty
