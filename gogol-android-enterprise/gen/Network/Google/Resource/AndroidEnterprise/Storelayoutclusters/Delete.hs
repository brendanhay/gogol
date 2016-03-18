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
-- Copyright   : (c) 2015 Brendan Hay
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
    , sddEnterpriseId
    , sddPageId
    , sddClusterId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

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
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a cluster.
--
-- /See:/ 'storelayoutclustersDelete' smart constructor.
data StorelayoutclustersDelete = StorelayoutclustersDelete
    { _sddEnterpriseId :: !Text
    , _sddPageId       :: !Text
    , _sddClusterId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StorelayoutclustersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sddEnterpriseId'
--
-- * 'sddPageId'
--
-- * 'sddClusterId'
storelayoutclustersDelete
    :: Text -- ^ 'sddEnterpriseId'
    -> Text -- ^ 'sddPageId'
    -> Text -- ^ 'sddClusterId'
    -> StorelayoutclustersDelete
storelayoutclustersDelete pSddEnterpriseId_ pSddPageId_ pSddClusterId_ =
    StorelayoutclustersDelete
    { _sddEnterpriseId = pSddEnterpriseId_
    , _sddPageId = pSddPageId_
    , _sddClusterId = pSddClusterId_
    }

-- | The ID of the enterprise.
sddEnterpriseId :: Lens' StorelayoutclustersDelete Text
sddEnterpriseId
  = lens _sddEnterpriseId
      (\ s a -> s{_sddEnterpriseId = a})

-- | The ID of the page.
sddPageId :: Lens' StorelayoutclustersDelete Text
sddPageId
  = lens _sddPageId (\ s a -> s{_sddPageId = a})

-- | The ID of the cluster.
sddClusterId :: Lens' StorelayoutclustersDelete Text
sddClusterId
  = lens _sddClusterId (\ s a -> s{_sddClusterId = a})

instance GoogleRequest StorelayoutclustersDelete
         where
        type Rs StorelayoutclustersDelete = ()
        requestClient StorelayoutclustersDelete{..}
          = go _sddEnterpriseId _sddPageId _sddClusterId
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy StorelayoutclustersDeleteResource)
                      mempty
