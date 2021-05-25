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
-- Module      : Network.Google.Resource.Content.Regionalinventory.Custombatch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates regional inventory for multiple products or regions in a single
-- request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.regionalinventory.custombatch@.
module Network.Google.Resource.Content.Regionalinventory.Custombatch
    (
    -- * REST Resource
      RegionalinventoryCustombatchResource

    -- * Creating a Request
    , regionalinventoryCustombatch
    , RegionalinventoryCustombatch

    -- * Request Lenses
    , rccXgafv
    , rccUploadProtocol
    , rccAccessToken
    , rccUploadType
    , rccPayload
    , rccCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.regionalinventory.custombatch@ method which the
-- 'RegionalinventoryCustombatch' request conforms to.
type RegionalinventoryCustombatchResource =
     "content" :>
       "v2.1" :>
         "regionalinventory" :>
           "batch" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] RegionalinventoryCustomBatchRequest
                           :> Post '[JSON] RegionalinventoryCustomBatchResponse

-- | Updates regional inventory for multiple products or regions in a single
-- request.
--
-- /See:/ 'regionalinventoryCustombatch' smart constructor.
data RegionalinventoryCustombatch =
  RegionalinventoryCustombatch'
    { _rccXgafv :: !(Maybe Xgafv)
    , _rccUploadProtocol :: !(Maybe Text)
    , _rccAccessToken :: !(Maybe Text)
    , _rccUploadType :: !(Maybe Text)
    , _rccPayload :: !RegionalinventoryCustomBatchRequest
    , _rccCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionalinventoryCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rccXgafv'
--
-- * 'rccUploadProtocol'
--
-- * 'rccAccessToken'
--
-- * 'rccUploadType'
--
-- * 'rccPayload'
--
-- * 'rccCallback'
regionalinventoryCustombatch
    :: RegionalinventoryCustomBatchRequest -- ^ 'rccPayload'
    -> RegionalinventoryCustombatch
regionalinventoryCustombatch pRccPayload_ =
  RegionalinventoryCustombatch'
    { _rccXgafv = Nothing
    , _rccUploadProtocol = Nothing
    , _rccAccessToken = Nothing
    , _rccUploadType = Nothing
    , _rccPayload = pRccPayload_
    , _rccCallback = Nothing
    }


-- | V1 error format.
rccXgafv :: Lens' RegionalinventoryCustombatch (Maybe Xgafv)
rccXgafv = lens _rccXgafv (\ s a -> s{_rccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rccUploadProtocol :: Lens' RegionalinventoryCustombatch (Maybe Text)
rccUploadProtocol
  = lens _rccUploadProtocol
      (\ s a -> s{_rccUploadProtocol = a})

-- | OAuth access token.
rccAccessToken :: Lens' RegionalinventoryCustombatch (Maybe Text)
rccAccessToken
  = lens _rccAccessToken
      (\ s a -> s{_rccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rccUploadType :: Lens' RegionalinventoryCustombatch (Maybe Text)
rccUploadType
  = lens _rccUploadType
      (\ s a -> s{_rccUploadType = a})

-- | Multipart request metadata.
rccPayload :: Lens' RegionalinventoryCustombatch RegionalinventoryCustomBatchRequest
rccPayload
  = lens _rccPayload (\ s a -> s{_rccPayload = a})

-- | JSONP
rccCallback :: Lens' RegionalinventoryCustombatch (Maybe Text)
rccCallback
  = lens _rccCallback (\ s a -> s{_rccCallback = a})

instance GoogleRequest RegionalinventoryCustombatch
         where
        type Rs RegionalinventoryCustombatch =
             RegionalinventoryCustomBatchResponse
        type Scopes RegionalinventoryCustombatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient RegionalinventoryCustombatch'{..}
          = go _rccXgafv _rccUploadProtocol _rccAccessToken
              _rccUploadType
              _rccCallback
              (Just AltJSON)
              _rccPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionalinventoryCustombatchResource)
                      mempty
