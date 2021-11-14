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
-- Module      : Network.Google.Resource.DFAReporting.Creatives.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one creative by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creatives.get@.
module Network.Google.Resource.DFAReporting.Creatives.Get
    (
    -- * REST Resource
      CreativesGetResource

    -- * Creating a Request
    , creativesGet
    , CreativesGet

    -- * Request Lenses
    , ccXgafv
    , ccUploadProtocol
    , ccAccessToken
    , ccUploadType
    , ccProFileId
    , ccId
    , ccCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.creatives.get@ method which the
-- 'CreativesGet' request conforms to.
type CreativesGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creatives" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Creative

-- | Gets one creative by ID.
--
-- /See:/ 'creativesGet' smart constructor.
data CreativesGet =
  CreativesGet'
    { _ccXgafv :: !(Maybe Xgafv)
    , _ccUploadProtocol :: !(Maybe Text)
    , _ccAccessToken :: !(Maybe Text)
    , _ccUploadType :: !(Maybe Text)
    , _ccProFileId :: !(Textual Int64)
    , _ccId :: !(Textual Int64)
    , _ccCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreativesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccXgafv'
--
-- * 'ccUploadProtocol'
--
-- * 'ccAccessToken'
--
-- * 'ccUploadType'
--
-- * 'ccProFileId'
--
-- * 'ccId'
--
-- * 'ccCallback'
creativesGet
    :: Int64 -- ^ 'ccProFileId'
    -> Int64 -- ^ 'ccId'
    -> CreativesGet
creativesGet pCcProFileId_ pCcId_ =
  CreativesGet'
    { _ccXgafv = Nothing
    , _ccUploadProtocol = Nothing
    , _ccAccessToken = Nothing
    , _ccUploadType = Nothing
    , _ccProFileId = _Coerce # pCcProFileId_
    , _ccId = _Coerce # pCcId_
    , _ccCallback = Nothing
    }


-- | V1 error format.
ccXgafv :: Lens' CreativesGet (Maybe Xgafv)
ccXgafv = lens _ccXgafv (\ s a -> s{_ccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccUploadProtocol :: Lens' CreativesGet (Maybe Text)
ccUploadProtocol
  = lens _ccUploadProtocol
      (\ s a -> s{_ccUploadProtocol = a})

-- | OAuth access token.
ccAccessToken :: Lens' CreativesGet (Maybe Text)
ccAccessToken
  = lens _ccAccessToken
      (\ s a -> s{_ccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccUploadType :: Lens' CreativesGet (Maybe Text)
ccUploadType
  = lens _ccUploadType (\ s a -> s{_ccUploadType = a})

-- | User profile ID associated with this request.
ccProFileId :: Lens' CreativesGet Int64
ccProFileId
  = lens _ccProFileId (\ s a -> s{_ccProFileId = a}) .
      _Coerce

-- | Creative ID.
ccId :: Lens' CreativesGet Int64
ccId = lens _ccId (\ s a -> s{_ccId = a}) . _Coerce

-- | JSONP
ccCallback :: Lens' CreativesGet (Maybe Text)
ccCallback
  = lens _ccCallback (\ s a -> s{_ccCallback = a})

instance GoogleRequest CreativesGet where
        type Rs CreativesGet = Creative
        type Scopes CreativesGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CreativesGet'{..}
          = go _ccProFileId _ccId _ccXgafv _ccUploadProtocol
              _ccAccessToken
              _ccUploadType
              _ccCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy CreativesGetResource)
                      mempty
