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
-- Module      : Network.Google.Resource.AndroidEnterprise.Collections.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a collection.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.collections.delete@.
module Network.Google.Resource.AndroidEnterprise.Collections.Delete
    (
    -- * REST Resource
      CollectionsDeleteResource

    -- * Creating a Request
    , collectionsDelete
    , CollectionsDelete

    -- * Request Lenses
    , cddEnterpriseId
    , cddCollectionId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.collections.delete@ method which the
-- 'CollectionsDelete' request conforms to.
type CollectionsDeleteResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "collections" :>
               Capture "collectionId" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a collection.
--
-- /See:/ 'collectionsDelete' smart constructor.
data CollectionsDelete = CollectionsDelete
    { _cddEnterpriseId :: !Text
    , _cddCollectionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cddEnterpriseId'
--
-- * 'cddCollectionId'
collectionsDelete
    :: Text -- ^ 'cddEnterpriseId'
    -> Text -- ^ 'cddCollectionId'
    -> CollectionsDelete
collectionsDelete pCddEnterpriseId_ pCddCollectionId_ =
    CollectionsDelete
    { _cddEnterpriseId = pCddEnterpriseId_
    , _cddCollectionId = pCddCollectionId_
    }

-- | The ID of the enterprise.
cddEnterpriseId :: Lens' CollectionsDelete Text
cddEnterpriseId
  = lens _cddEnterpriseId
      (\ s a -> s{_cddEnterpriseId = a})

-- | The ID of the collection.
cddCollectionId :: Lens' CollectionsDelete Text
cddCollectionId
  = lens _cddCollectionId
      (\ s a -> s{_cddCollectionId = a})

instance GoogleRequest CollectionsDelete where
        type Rs CollectionsDelete = ()
        requestClient CollectionsDelete{..}
          = go _cddEnterpriseId _cddCollectionId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy CollectionsDeleteResource)
                      mempty
