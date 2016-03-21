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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the details of a collection.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.collections.get@.
module Network.Google.Resource.AndroidEnterprise.Collections.Get
    (
    -- * REST Resource
      CollectionsGetResource

    -- * Creating a Request
    , collectionsGet
    , CollectionsGet

    -- * Request Lenses
    , cgEnterpriseId
    , cgCollectionId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.collections.get@ method which the
-- 'CollectionsGet' request conforms to.
type CollectionsGetResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "collections" :>
               Capture "collectionId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Collection

-- | Retrieves the details of a collection.
--
-- /See:/ 'collectionsGet' smart constructor.
data CollectionsGet = CollectionsGet'
    { _cgEnterpriseId :: !Text
    , _cgCollectionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgEnterpriseId'
--
-- * 'cgCollectionId'
collectionsGet
    :: Text -- ^ 'cgEnterpriseId'
    -> Text -- ^ 'cgCollectionId'
    -> CollectionsGet
collectionsGet pCgEnterpriseId_ pCgCollectionId_ =
    CollectionsGet'
    { _cgEnterpriseId = pCgEnterpriseId_
    , _cgCollectionId = pCgCollectionId_
    }

-- | The ID of the enterprise.
cgEnterpriseId :: Lens' CollectionsGet Text
cgEnterpriseId
  = lens _cgEnterpriseId
      (\ s a -> s{_cgEnterpriseId = a})

-- | The ID of the collection.
cgCollectionId :: Lens' CollectionsGet Text
cgCollectionId
  = lens _cgCollectionId
      (\ s a -> s{_cgCollectionId = a})

instance GoogleRequest CollectionsGet where
        type Rs CollectionsGet = Collection
        type Scopes CollectionsGet =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient CollectionsGet'{..}
          = go _cgEnterpriseId _cgCollectionId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy CollectionsGetResource)
                      mempty
