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
-- Module      : Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the content of a store page. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.storelayoutpages.patch@.
module Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Patch
    (
    -- * REST Resource
      StorelayoutpagesPatchResource

    -- * Creating a Request
    , storelayoutpagesPatch
    , StorelayoutpagesPatch

    -- * Request Lenses
    , spEnterpriseId
    , spPageId
    , spPayload
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.storelayoutpages.patch@ method which the
-- 'StorelayoutpagesPatch' request conforms to.
type StorelayoutpagesPatchResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "storeLayout" :>
               "pages" :>
                 Capture "pageId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] StorePage :> Patch '[JSON] StorePage

-- | Updates the content of a store page. This method supports patch
-- semantics.
--
-- /See:/ 'storelayoutpagesPatch' smart constructor.
data StorelayoutpagesPatch = StorelayoutpagesPatch
    { _spEnterpriseId :: !Text
    , _spPageId       :: !Text
    , _spPayload      :: !StorePage
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StorelayoutpagesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spEnterpriseId'
--
-- * 'spPageId'
--
-- * 'spPayload'
storelayoutpagesPatch
    :: Text -- ^ 'spEnterpriseId'
    -> Text -- ^ 'spPageId'
    -> StorePage -- ^ 'spPayload'
    -> StorelayoutpagesPatch
storelayoutpagesPatch pSpEnterpriseId_ pSpPageId_ pSpPayload_ =
    StorelayoutpagesPatch
    { _spEnterpriseId = pSpEnterpriseId_
    , _spPageId = pSpPageId_
    , _spPayload = pSpPayload_
    }

-- | The ID of the enterprise.
spEnterpriseId :: Lens' StorelayoutpagesPatch Text
spEnterpriseId
  = lens _spEnterpriseId
      (\ s a -> s{_spEnterpriseId = a})

-- | The ID of the page.
spPageId :: Lens' StorelayoutpagesPatch Text
spPageId = lens _spPageId (\ s a -> s{_spPageId = a})

-- | Multipart request metadata.
spPayload :: Lens' StorelayoutpagesPatch StorePage
spPayload
  = lens _spPayload (\ s a -> s{_spPayload = a})

instance GoogleRequest StorelayoutpagesPatch where
        type Rs StorelayoutpagesPatch = StorePage
        requestClient StorelayoutpagesPatch{..}
          = go _spEnterpriseId _spPageId (Just AltJSON)
              _spPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy StorelayoutpagesPatchResource)
                      mempty
