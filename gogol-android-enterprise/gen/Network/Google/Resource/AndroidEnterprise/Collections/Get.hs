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
-- Module      : Network.Google.Resource.AndroidEnterprise.Collections.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the details of a collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.collections.get@.
module Network.Google.Resource.AndroidEnterprise.Collections.Get
    (
    -- * REST Resource
      CollectionsGetResource

    -- * Creating a Request
    , collectionsGet'
    , CollectionsGet'

    -- * Request Lenses
    , cggEnterpriseId
    , cggCollectionId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.collections.get@ method which the
-- 'CollectionsGet'' request conforms to.
type CollectionsGetResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           Capture "collectionId" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Collection

-- | Retrieves the details of a collection.
--
-- /See:/ 'collectionsGet'' smart constructor.
data CollectionsGet' = CollectionsGet'
    { _cggEnterpriseId :: !Text
    , _cggCollectionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cggEnterpriseId'
--
-- * 'cggCollectionId'
collectionsGet'
    :: Text -- ^ 'cggEnterpriseId'
    -> Text -- ^ 'cggCollectionId'
    -> CollectionsGet'
collectionsGet' pCggEnterpriseId_ pCggCollectionId_ =
    CollectionsGet'
    { _cggEnterpriseId = pCggEnterpriseId_
    , _cggCollectionId = pCggCollectionId_
    }

-- | The ID of the enterprise.
cggEnterpriseId :: Lens' CollectionsGet' Text
cggEnterpriseId
  = lens _cggEnterpriseId
      (\ s a -> s{_cggEnterpriseId = a})

-- | The ID of the collection.
cggCollectionId :: Lens' CollectionsGet' Text
cggCollectionId
  = lens _cggCollectionId
      (\ s a -> s{_cggCollectionId = a})

instance GoogleRequest CollectionsGet' where
        type Rs CollectionsGet' = Collection
        requestClient CollectionsGet'{..}
          = go _cggEnterpriseId _cggCollectionId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy CollectionsGetResource)
                      mempty
