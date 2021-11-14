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
-- Module      : Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new cluster in a page.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.storelayoutclusters.insert@.
module Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Insert
    (
    -- * REST Resource
      StorelayoutclustersInsertResource

    -- * Creating a Request
    , storelayoutclustersInsert
    , StorelayoutclustersInsert

    -- * Request Lenses
    , sXgafv
    , sUploadProtocol
    , sEnterpriseId
    , sAccessToken
    , sUploadType
    , sPageId
    , sPayload
    , sCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.storelayoutclusters.insert@ method which the
-- 'StorelayoutclustersInsert' request conforms to.
type StorelayoutclustersInsertResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "storeLayout" :>
               "pages" :>
                 Capture "pageId" Text :>
                   "clusters" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] StoreCluster :>
                                   Post '[JSON] StoreCluster

-- | Inserts a new cluster in a page.
--
-- /See:/ 'storelayoutclustersInsert' smart constructor.
data StorelayoutclustersInsert =
  StorelayoutclustersInsert'
    { _sXgafv :: !(Maybe Xgafv)
    , _sUploadProtocol :: !(Maybe Text)
    , _sEnterpriseId :: !Text
    , _sAccessToken :: !(Maybe Text)
    , _sUploadType :: !(Maybe Text)
    , _sPageId :: !Text
    , _sPayload :: !StoreCluster
    , _sCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StorelayoutclustersInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sXgafv'
--
-- * 'sUploadProtocol'
--
-- * 'sEnterpriseId'
--
-- * 'sAccessToken'
--
-- * 'sUploadType'
--
-- * 'sPageId'
--
-- * 'sPayload'
--
-- * 'sCallback'
storelayoutclustersInsert
    :: Text -- ^ 'sEnterpriseId'
    -> Text -- ^ 'sPageId'
    -> StoreCluster -- ^ 'sPayload'
    -> StorelayoutclustersInsert
storelayoutclustersInsert pSEnterpriseId_ pSPageId_ pSPayload_ =
  StorelayoutclustersInsert'
    { _sXgafv = Nothing
    , _sUploadProtocol = Nothing
    , _sEnterpriseId = pSEnterpriseId_
    , _sAccessToken = Nothing
    , _sUploadType = Nothing
    , _sPageId = pSPageId_
    , _sPayload = pSPayload_
    , _sCallback = Nothing
    }


-- | V1 error format.
sXgafv :: Lens' StorelayoutclustersInsert (Maybe Xgafv)
sXgafv = lens _sXgafv (\ s a -> s{_sXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sUploadProtocol :: Lens' StorelayoutclustersInsert (Maybe Text)
sUploadProtocol
  = lens _sUploadProtocol
      (\ s a -> s{_sUploadProtocol = a})

-- | The ID of the enterprise.
sEnterpriseId :: Lens' StorelayoutclustersInsert Text
sEnterpriseId
  = lens _sEnterpriseId
      (\ s a -> s{_sEnterpriseId = a})

-- | OAuth access token.
sAccessToken :: Lens' StorelayoutclustersInsert (Maybe Text)
sAccessToken
  = lens _sAccessToken (\ s a -> s{_sAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sUploadType :: Lens' StorelayoutclustersInsert (Maybe Text)
sUploadType
  = lens _sUploadType (\ s a -> s{_sUploadType = a})

-- | The ID of the page.
sPageId :: Lens' StorelayoutclustersInsert Text
sPageId = lens _sPageId (\ s a -> s{_sPageId = a})

-- | Multipart request metadata.
sPayload :: Lens' StorelayoutclustersInsert StoreCluster
sPayload = lens _sPayload (\ s a -> s{_sPayload = a})

-- | JSONP
sCallback :: Lens' StorelayoutclustersInsert (Maybe Text)
sCallback
  = lens _sCallback (\ s a -> s{_sCallback = a})

instance GoogleRequest StorelayoutclustersInsert
         where
        type Rs StorelayoutclustersInsert = StoreCluster
        type Scopes StorelayoutclustersInsert =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient StorelayoutclustersInsert'{..}
          = go _sEnterpriseId _sPageId _sXgafv _sUploadProtocol
              _sAccessToken
              _sUploadType
              _sCallback
              (Just AltJSON)
              _sPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy StorelayoutclustersInsertResource)
                      mempty
