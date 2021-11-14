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
-- Module      : Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a cluster.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.storelayoutclusters.delete@.
module Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Delete
    (
    -- * REST Resource
      StorelayoutclustersDeleteResource

    -- * Creating a Request
    , storelayoutclustersDelete
    , StorelayoutclustersDelete

    -- * Request Lenses
    , sddXgafv
    , sddUploadProtocol
    , sddEnterpriseId
    , sddAccessToken
    , sddUploadType
    , sddPageId
    , sddClusterId
    , sddCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.storelayoutclusters.delete@ method which the
-- 'StorelayoutclustersDelete' request conforms to.
type StorelayoutclustersDeleteResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "storeLayout" :>
               "pages" :>
                 Capture "pageId" Text :>
                   "clusters" :>
                     Capture "clusterId" Text :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a cluster.
--
-- /See:/ 'storelayoutclustersDelete' smart constructor.
data StorelayoutclustersDelete =
  StorelayoutclustersDelete'
    { _sddXgafv :: !(Maybe Xgafv)
    , _sddUploadProtocol :: !(Maybe Text)
    , _sddEnterpriseId :: !Text
    , _sddAccessToken :: !(Maybe Text)
    , _sddUploadType :: !(Maybe Text)
    , _sddPageId :: !Text
    , _sddClusterId :: !Text
    , _sddCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StorelayoutclustersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sddXgafv'
--
-- * 'sddUploadProtocol'
--
-- * 'sddEnterpriseId'
--
-- * 'sddAccessToken'
--
-- * 'sddUploadType'
--
-- * 'sddPageId'
--
-- * 'sddClusterId'
--
-- * 'sddCallback'
storelayoutclustersDelete
    :: Text -- ^ 'sddEnterpriseId'
    -> Text -- ^ 'sddPageId'
    -> Text -- ^ 'sddClusterId'
    -> StorelayoutclustersDelete
storelayoutclustersDelete pSddEnterpriseId_ pSddPageId_ pSddClusterId_ =
  StorelayoutclustersDelete'
    { _sddXgafv = Nothing
    , _sddUploadProtocol = Nothing
    , _sddEnterpriseId = pSddEnterpriseId_
    , _sddAccessToken = Nothing
    , _sddUploadType = Nothing
    , _sddPageId = pSddPageId_
    , _sddClusterId = pSddClusterId_
    , _sddCallback = Nothing
    }


-- | V1 error format.
sddXgafv :: Lens' StorelayoutclustersDelete (Maybe Xgafv)
sddXgafv = lens _sddXgafv (\ s a -> s{_sddXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sddUploadProtocol :: Lens' StorelayoutclustersDelete (Maybe Text)
sddUploadProtocol
  = lens _sddUploadProtocol
      (\ s a -> s{_sddUploadProtocol = a})

-- | The ID of the enterprise.
sddEnterpriseId :: Lens' StorelayoutclustersDelete Text
sddEnterpriseId
  = lens _sddEnterpriseId
      (\ s a -> s{_sddEnterpriseId = a})

-- | OAuth access token.
sddAccessToken :: Lens' StorelayoutclustersDelete (Maybe Text)
sddAccessToken
  = lens _sddAccessToken
      (\ s a -> s{_sddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sddUploadType :: Lens' StorelayoutclustersDelete (Maybe Text)
sddUploadType
  = lens _sddUploadType
      (\ s a -> s{_sddUploadType = a})

-- | The ID of the page.
sddPageId :: Lens' StorelayoutclustersDelete Text
sddPageId
  = lens _sddPageId (\ s a -> s{_sddPageId = a})

-- | The ID of the cluster.
sddClusterId :: Lens' StorelayoutclustersDelete Text
sddClusterId
  = lens _sddClusterId (\ s a -> s{_sddClusterId = a})

-- | JSONP
sddCallback :: Lens' StorelayoutclustersDelete (Maybe Text)
sddCallback
  = lens _sddCallback (\ s a -> s{_sddCallback = a})

instance GoogleRequest StorelayoutclustersDelete
         where
        type Rs StorelayoutclustersDelete = ()
        type Scopes StorelayoutclustersDelete =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient StorelayoutclustersDelete'{..}
          = go _sddEnterpriseId _sddPageId _sddClusterId
              _sddXgafv
              _sddUploadProtocol
              _sddAccessToken
              _sddUploadType
              _sddCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy StorelayoutclustersDeleteResource)
                      mempty
