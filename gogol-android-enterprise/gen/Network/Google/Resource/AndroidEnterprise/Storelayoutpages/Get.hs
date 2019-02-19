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
-- Module      : Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details of a store page.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.storelayoutpages.get@.
module Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Get
    (
    -- * REST Resource
      StorelayoutpagesGetResource

    -- * Creating a Request
    , storelayoutpagesGet
    , StorelayoutpagesGet

    -- * Request Lenses
    , sgEnterpriseId
    , sgPageId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.storelayoutpages.get@ method which the
-- 'StorelayoutpagesGet' request conforms to.
type StorelayoutpagesGetResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "storeLayout" :>
               "pages" :>
                 Capture "pageId" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] StorePage

-- | Retrieves details of a store page.
--
-- /See:/ 'storelayoutpagesGet' smart constructor.
data StorelayoutpagesGet =
  StorelayoutpagesGet'
    { _sgEnterpriseId :: !Text
    , _sgPageId       :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'StorelayoutpagesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgEnterpriseId'
--
-- * 'sgPageId'
storelayoutpagesGet
    :: Text -- ^ 'sgEnterpriseId'
    -> Text -- ^ 'sgPageId'
    -> StorelayoutpagesGet
storelayoutpagesGet pSgEnterpriseId_ pSgPageId_ =
  StorelayoutpagesGet'
    {_sgEnterpriseId = pSgEnterpriseId_, _sgPageId = pSgPageId_}

-- | The ID of the enterprise.
sgEnterpriseId :: Lens' StorelayoutpagesGet Text
sgEnterpriseId
  = lens _sgEnterpriseId
      (\ s a -> s{_sgEnterpriseId = a})

-- | The ID of the page.
sgPageId :: Lens' StorelayoutpagesGet Text
sgPageId = lens _sgPageId (\ s a -> s{_sgPageId = a})

instance GoogleRequest StorelayoutpagesGet where
        type Rs StorelayoutpagesGet = StorePage
        type Scopes StorelayoutpagesGet =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient StorelayoutpagesGet'{..}
          = go _sgEnterpriseId _sgPageId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy StorelayoutpagesGetResource)
                      mempty
