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
-- Module      : Network.Google.Resource.AndroidEnterprise.Storelayoutpages.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the details of all pages in the store.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.storelayoutpages.list@.
module Network.Google.Resource.AndroidEnterprise.Storelayoutpages.List
    (
    -- * REST Resource
      StorelayoutpagesListResource

    -- * Creating a Request
    , storelayoutpagesList
    , StorelayoutpagesList

    -- * Request Lenses
    , slEnterpriseId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.storelayoutpages.list@ method which the
-- 'StorelayoutpagesList' request conforms to.
type StorelayoutpagesListResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "storeLayout" :>
               "pages" :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] StoreLayoutPagesListResponse

-- | Retrieves the details of all pages in the store.
--
-- /See:/ 'storelayoutpagesList' smart constructor.
newtype StorelayoutpagesList = StorelayoutpagesList
    { _slEnterpriseId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StorelayoutpagesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slEnterpriseId'
storelayoutpagesList
    :: Text -- ^ 'slEnterpriseId'
    -> StorelayoutpagesList
storelayoutpagesList pSlEnterpriseId_ =
    StorelayoutpagesList
    { _slEnterpriseId = pSlEnterpriseId_
    }

-- | The ID of the enterprise.
slEnterpriseId :: Lens' StorelayoutpagesList Text
slEnterpriseId
  = lens _slEnterpriseId
      (\ s a -> s{_slEnterpriseId = a})

instance GoogleRequest StorelayoutpagesList where
        type Rs StorelayoutpagesList =
             StoreLayoutPagesListResponse
        type Scopes StorelayoutpagesList =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient StorelayoutpagesList{..}
          = go _slEnterpriseId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy StorelayoutpagesListResource)
                      mempty
