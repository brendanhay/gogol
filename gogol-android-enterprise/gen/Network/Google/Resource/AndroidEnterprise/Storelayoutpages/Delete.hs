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
-- Module      : Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a store page.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.storelayoutpages.delete@.
module Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Delete
    (
    -- * REST Resource
      StorelayoutpagesDeleteResource

    -- * Creating a Request
    , storelayoutpagesDelete
    , StorelayoutpagesDelete

    -- * Request Lenses
    , sdEnterpriseId
    , sdPageId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.storelayoutpages.delete@ method which the
-- 'StorelayoutpagesDelete' request conforms to.
type StorelayoutpagesDeleteResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "storeLayout" :>
               "pages" :>
                 Capture "pageId" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a store page.
--
-- /See:/ 'storelayoutpagesDelete' smart constructor.
data StorelayoutpagesDelete =
  StorelayoutpagesDelete'
    { _sdEnterpriseId :: !Text
    , _sdPageId       :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'StorelayoutpagesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdEnterpriseId'
--
-- * 'sdPageId'
storelayoutpagesDelete
    :: Text -- ^ 'sdEnterpriseId'
    -> Text -- ^ 'sdPageId'
    -> StorelayoutpagesDelete
storelayoutpagesDelete pSdEnterpriseId_ pSdPageId_ =
  StorelayoutpagesDelete'
    {_sdEnterpriseId = pSdEnterpriseId_, _sdPageId = pSdPageId_}

-- | The ID of the enterprise.
sdEnterpriseId :: Lens' StorelayoutpagesDelete Text
sdEnterpriseId
  = lens _sdEnterpriseId
      (\ s a -> s{_sdEnterpriseId = a})

-- | The ID of the page.
sdPageId :: Lens' StorelayoutpagesDelete Text
sdPageId = lens _sdPageId (\ s a -> s{_sdPageId = a})

instance GoogleRequest StorelayoutpagesDelete where
        type Rs StorelayoutpagesDelete = ()
        type Scopes StorelayoutpagesDelete =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient StorelayoutpagesDelete'{..}
          = go _sdEnterpriseId _sdPageId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy StorelayoutpagesDeleteResource)
                      mempty
