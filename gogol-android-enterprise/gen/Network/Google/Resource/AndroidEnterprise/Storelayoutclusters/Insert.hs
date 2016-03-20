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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , sEnterpriseId
    , sPageId
    , sPayload
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

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
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] StoreCluster :>
                         Post '[JSON] StoreCluster

-- | Inserts a new cluster in a page.
--
-- /See:/ 'storelayoutclustersInsert' smart constructor.
data StorelayoutclustersInsert = StorelayoutclustersInsert
    { _sEnterpriseId :: !Text
    , _sPageId       :: !Text
    , _sPayload      :: !StoreCluster
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StorelayoutclustersInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sEnterpriseId'
--
-- * 'sPageId'
--
-- * 'sPayload'
storelayoutclustersInsert
    :: Text -- ^ 'sEnterpriseId'
    -> Text -- ^ 'sPageId'
    -> StoreCluster -- ^ 'sPayload'
    -> StorelayoutclustersInsert
storelayoutclustersInsert pSEnterpriseId_ pSPageId_ pSPayload_ =
    StorelayoutclustersInsert
    { _sEnterpriseId = pSEnterpriseId_
    , _sPageId = pSPageId_
    , _sPayload = pSPayload_
    }

-- | The ID of the enterprise.
sEnterpriseId :: Lens' StorelayoutclustersInsert Text
sEnterpriseId
  = lens _sEnterpriseId
      (\ s a -> s{_sEnterpriseId = a})

-- | The ID of the page.
sPageId :: Lens' StorelayoutclustersInsert Text
sPageId = lens _sPageId (\ s a -> s{_sPageId = a})

-- | Multipart request metadata.
sPayload :: Lens' StorelayoutclustersInsert StoreCluster
sPayload = lens _sPayload (\ s a -> s{_sPayload = a})

instance GoogleRequest StorelayoutclustersInsert
         where
        type Rs StorelayoutclustersInsert = StoreCluster
        requestClient StorelayoutclustersInsert{..}
          = go _sEnterpriseId _sPageId (Just AltJSON) _sPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy StorelayoutclustersInsertResource)
                      mempty
