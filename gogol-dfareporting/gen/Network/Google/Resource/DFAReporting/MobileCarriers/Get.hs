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
-- Module      : Network.Google.Resource.DFAReporting.MobileCarriers.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one mobile carrier by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.mobileCarriers.get@.
module Network.Google.Resource.DFAReporting.MobileCarriers.Get
    (
    -- * REST Resource
      MobileCarriersGetResource

    -- * Creating a Request
    , mobileCarriersGet
    , MobileCarriersGet

    -- * Request Lenses
    , mcgXgafv
    , mcgUploadProtocol
    , mcgAccessToken
    , mcgUploadType
    , mcgProFileId
    , mcgId
    , mcgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.mobileCarriers.get@ method which the
-- 'MobileCarriersGet' request conforms to.
type MobileCarriersGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "mobileCarriers" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] MobileCarrier

-- | Gets one mobile carrier by ID.
--
-- /See:/ 'mobileCarriersGet' smart constructor.
data MobileCarriersGet =
  MobileCarriersGet'
    { _mcgXgafv :: !(Maybe Xgafv)
    , _mcgUploadProtocol :: !(Maybe Text)
    , _mcgAccessToken :: !(Maybe Text)
    , _mcgUploadType :: !(Maybe Text)
    , _mcgProFileId :: !(Textual Int64)
    , _mcgId :: !(Textual Int64)
    , _mcgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MobileCarriersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcgXgafv'
--
-- * 'mcgUploadProtocol'
--
-- * 'mcgAccessToken'
--
-- * 'mcgUploadType'
--
-- * 'mcgProFileId'
--
-- * 'mcgId'
--
-- * 'mcgCallback'
mobileCarriersGet
    :: Int64 -- ^ 'mcgProFileId'
    -> Int64 -- ^ 'mcgId'
    -> MobileCarriersGet
mobileCarriersGet pMcgProFileId_ pMcgId_ =
  MobileCarriersGet'
    { _mcgXgafv = Nothing
    , _mcgUploadProtocol = Nothing
    , _mcgAccessToken = Nothing
    , _mcgUploadType = Nothing
    , _mcgProFileId = _Coerce # pMcgProFileId_
    , _mcgId = _Coerce # pMcgId_
    , _mcgCallback = Nothing
    }


-- | V1 error format.
mcgXgafv :: Lens' MobileCarriersGet (Maybe Xgafv)
mcgXgafv = lens _mcgXgafv (\ s a -> s{_mcgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mcgUploadProtocol :: Lens' MobileCarriersGet (Maybe Text)
mcgUploadProtocol
  = lens _mcgUploadProtocol
      (\ s a -> s{_mcgUploadProtocol = a})

-- | OAuth access token.
mcgAccessToken :: Lens' MobileCarriersGet (Maybe Text)
mcgAccessToken
  = lens _mcgAccessToken
      (\ s a -> s{_mcgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mcgUploadType :: Lens' MobileCarriersGet (Maybe Text)
mcgUploadType
  = lens _mcgUploadType
      (\ s a -> s{_mcgUploadType = a})

-- | User profile ID associated with this request.
mcgProFileId :: Lens' MobileCarriersGet Int64
mcgProFileId
  = lens _mcgProFileId (\ s a -> s{_mcgProFileId = a})
      . _Coerce

-- | Mobile carrier ID.
mcgId :: Lens' MobileCarriersGet Int64
mcgId
  = lens _mcgId (\ s a -> s{_mcgId = a}) . _Coerce

-- | JSONP
mcgCallback :: Lens' MobileCarriersGet (Maybe Text)
mcgCallback
  = lens _mcgCallback (\ s a -> s{_mcgCallback = a})

instance GoogleRequest MobileCarriersGet where
        type Rs MobileCarriersGet = MobileCarrier
        type Scopes MobileCarriersGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient MobileCarriersGet'{..}
          = go _mcgProFileId _mcgId _mcgXgafv
              _mcgUploadProtocol
              _mcgAccessToken
              _mcgUploadType
              _mcgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy MobileCarriersGetResource)
                      mempty
