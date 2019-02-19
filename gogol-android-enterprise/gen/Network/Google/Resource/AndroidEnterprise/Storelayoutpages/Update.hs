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
-- Module      : Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the content of a store page.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.storelayoutpages.update@.
module Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Update
    (
    -- * REST Resource
      StorelayoutpagesUpdateResource

    -- * Creating a Request
    , storelayoutpagesUpdate
    , StorelayoutpagesUpdate

    -- * Request Lenses
    , suEnterpriseId
    , suPageId
    , suPayload
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.storelayoutpages.update@ method which the
-- 'StorelayoutpagesUpdate' request conforms to.
type StorelayoutpagesUpdateResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "storeLayout" :>
               "pages" :>
                 Capture "pageId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] StorePage :> Put '[JSON] StorePage

-- | Updates the content of a store page.
--
-- /See:/ 'storelayoutpagesUpdate' smart constructor.
data StorelayoutpagesUpdate =
  StorelayoutpagesUpdate'
    { _suEnterpriseId :: !Text
    , _suPageId       :: !Text
    , _suPayload      :: !StorePage
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StorelayoutpagesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suEnterpriseId'
--
-- * 'suPageId'
--
-- * 'suPayload'
storelayoutpagesUpdate
    :: Text -- ^ 'suEnterpriseId'
    -> Text -- ^ 'suPageId'
    -> StorePage -- ^ 'suPayload'
    -> StorelayoutpagesUpdate
storelayoutpagesUpdate pSuEnterpriseId_ pSuPageId_ pSuPayload_ =
  StorelayoutpagesUpdate'
    { _suEnterpriseId = pSuEnterpriseId_
    , _suPageId = pSuPageId_
    , _suPayload = pSuPayload_
    }


-- | The ID of the enterprise.
suEnterpriseId :: Lens' StorelayoutpagesUpdate Text
suEnterpriseId
  = lens _suEnterpriseId
      (\ s a -> s{_suEnterpriseId = a})

-- | The ID of the page.
suPageId :: Lens' StorelayoutpagesUpdate Text
suPageId = lens _suPageId (\ s a -> s{_suPageId = a})

-- | Multipart request metadata.
suPayload :: Lens' StorelayoutpagesUpdate StorePage
suPayload
  = lens _suPayload (\ s a -> s{_suPayload = a})

instance GoogleRequest StorelayoutpagesUpdate where
        type Rs StorelayoutpagesUpdate = StorePage
        type Scopes StorelayoutpagesUpdate =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient StorelayoutpagesUpdate'{..}
          = go _suEnterpriseId _suPageId (Just AltJSON)
              _suPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy StorelayoutpagesUpdateResource)
                      mempty
