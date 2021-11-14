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
-- Module      : Network.Google.Resource.DFAReporting.TargetingTemplates.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one targeting template by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.targetingTemplates.get@.
module Network.Google.Resource.DFAReporting.TargetingTemplates.Get
    (
    -- * REST Resource
      TargetingTemplatesGetResource

    -- * Creating a Request
    , targetingTemplatesGet
    , TargetingTemplatesGet

    -- * Request Lenses
    , ttgXgafv
    , ttgUploadProtocol
    , ttgAccessToken
    , ttgUploadType
    , ttgProFileId
    , ttgId
    , ttgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.targetingTemplates.get@ method which the
-- 'TargetingTemplatesGet' request conforms to.
type TargetingTemplatesGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "targetingTemplates" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] TargetingTemplate

-- | Gets one targeting template by ID.
--
-- /See:/ 'targetingTemplatesGet' smart constructor.
data TargetingTemplatesGet =
  TargetingTemplatesGet'
    { _ttgXgafv :: !(Maybe Xgafv)
    , _ttgUploadProtocol :: !(Maybe Text)
    , _ttgAccessToken :: !(Maybe Text)
    , _ttgUploadType :: !(Maybe Text)
    , _ttgProFileId :: !(Textual Int64)
    , _ttgId :: !(Textual Int64)
    , _ttgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetingTemplatesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttgXgafv'
--
-- * 'ttgUploadProtocol'
--
-- * 'ttgAccessToken'
--
-- * 'ttgUploadType'
--
-- * 'ttgProFileId'
--
-- * 'ttgId'
--
-- * 'ttgCallback'
targetingTemplatesGet
    :: Int64 -- ^ 'ttgProFileId'
    -> Int64 -- ^ 'ttgId'
    -> TargetingTemplatesGet
targetingTemplatesGet pTtgProFileId_ pTtgId_ =
  TargetingTemplatesGet'
    { _ttgXgafv = Nothing
    , _ttgUploadProtocol = Nothing
    , _ttgAccessToken = Nothing
    , _ttgUploadType = Nothing
    , _ttgProFileId = _Coerce # pTtgProFileId_
    , _ttgId = _Coerce # pTtgId_
    , _ttgCallback = Nothing
    }


-- | V1 error format.
ttgXgafv :: Lens' TargetingTemplatesGet (Maybe Xgafv)
ttgXgafv = lens _ttgXgafv (\ s a -> s{_ttgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ttgUploadProtocol :: Lens' TargetingTemplatesGet (Maybe Text)
ttgUploadProtocol
  = lens _ttgUploadProtocol
      (\ s a -> s{_ttgUploadProtocol = a})

-- | OAuth access token.
ttgAccessToken :: Lens' TargetingTemplatesGet (Maybe Text)
ttgAccessToken
  = lens _ttgAccessToken
      (\ s a -> s{_ttgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ttgUploadType :: Lens' TargetingTemplatesGet (Maybe Text)
ttgUploadType
  = lens _ttgUploadType
      (\ s a -> s{_ttgUploadType = a})

-- | User profile ID associated with this request.
ttgProFileId :: Lens' TargetingTemplatesGet Int64
ttgProFileId
  = lens _ttgProFileId (\ s a -> s{_ttgProFileId = a})
      . _Coerce

-- | Targeting template ID.
ttgId :: Lens' TargetingTemplatesGet Int64
ttgId
  = lens _ttgId (\ s a -> s{_ttgId = a}) . _Coerce

-- | JSONP
ttgCallback :: Lens' TargetingTemplatesGet (Maybe Text)
ttgCallback
  = lens _ttgCallback (\ s a -> s{_ttgCallback = a})

instance GoogleRequest TargetingTemplatesGet where
        type Rs TargetingTemplatesGet = TargetingTemplate
        type Scopes TargetingTemplatesGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient TargetingTemplatesGet'{..}
          = go _ttgProFileId _ttgId _ttgXgafv
              _ttgUploadProtocol
              _ttgAccessToken
              _ttgUploadType
              _ttgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetingTemplatesGetResource)
                      mempty
