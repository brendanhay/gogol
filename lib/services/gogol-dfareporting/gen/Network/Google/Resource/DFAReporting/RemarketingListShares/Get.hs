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
-- Module      : Network.Google.Resource.DFAReporting.RemarketingListShares.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one remarketing list share by remarketing list ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.remarketingListShares.get@.
module Network.Google.Resource.DFAReporting.RemarketingListShares.Get
    (
    -- * REST Resource
      RemarketingListSharesGetResource

    -- * Creating a Request
    , remarketingListSharesGet
    , RemarketingListSharesGet

    -- * Request Lenses
    , rlsgXgafv
    , rlsgUploadProtocol
    , rlsgAccessToken
    , rlsgUploadType
    , rlsgProFileId
    , rlsgRemarketingListId
    , rlsgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.remarketingListShares.get@ method which the
-- 'RemarketingListSharesGet' request conforms to.
type RemarketingListSharesGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "remarketingListShares" :>
               Capture "remarketingListId" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] RemarketingListShare

-- | Gets one remarketing list share by remarketing list ID.
--
-- /See:/ 'remarketingListSharesGet' smart constructor.
data RemarketingListSharesGet =
  RemarketingListSharesGet'
    { _rlsgXgafv :: !(Maybe Xgafv)
    , _rlsgUploadProtocol :: !(Maybe Text)
    , _rlsgAccessToken :: !(Maybe Text)
    , _rlsgUploadType :: !(Maybe Text)
    , _rlsgProFileId :: !(Textual Int64)
    , _rlsgRemarketingListId :: !(Textual Int64)
    , _rlsgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemarketingListSharesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlsgXgafv'
--
-- * 'rlsgUploadProtocol'
--
-- * 'rlsgAccessToken'
--
-- * 'rlsgUploadType'
--
-- * 'rlsgProFileId'
--
-- * 'rlsgRemarketingListId'
--
-- * 'rlsgCallback'
remarketingListSharesGet
    :: Int64 -- ^ 'rlsgProFileId'
    -> Int64 -- ^ 'rlsgRemarketingListId'
    -> RemarketingListSharesGet
remarketingListSharesGet pRlsgProFileId_ pRlsgRemarketingListId_ =
  RemarketingListSharesGet'
    { _rlsgXgafv = Nothing
    , _rlsgUploadProtocol = Nothing
    , _rlsgAccessToken = Nothing
    , _rlsgUploadType = Nothing
    , _rlsgProFileId = _Coerce # pRlsgProFileId_
    , _rlsgRemarketingListId = _Coerce # pRlsgRemarketingListId_
    , _rlsgCallback = Nothing
    }


-- | V1 error format.
rlsgXgafv :: Lens' RemarketingListSharesGet (Maybe Xgafv)
rlsgXgafv
  = lens _rlsgXgafv (\ s a -> s{_rlsgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rlsgUploadProtocol :: Lens' RemarketingListSharesGet (Maybe Text)
rlsgUploadProtocol
  = lens _rlsgUploadProtocol
      (\ s a -> s{_rlsgUploadProtocol = a})

-- | OAuth access token.
rlsgAccessToken :: Lens' RemarketingListSharesGet (Maybe Text)
rlsgAccessToken
  = lens _rlsgAccessToken
      (\ s a -> s{_rlsgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rlsgUploadType :: Lens' RemarketingListSharesGet (Maybe Text)
rlsgUploadType
  = lens _rlsgUploadType
      (\ s a -> s{_rlsgUploadType = a})

-- | User profile ID associated with this request.
rlsgProFileId :: Lens' RemarketingListSharesGet Int64
rlsgProFileId
  = lens _rlsgProFileId
      (\ s a -> s{_rlsgProFileId = a})
      . _Coerce

-- | Remarketing list ID.
rlsgRemarketingListId :: Lens' RemarketingListSharesGet Int64
rlsgRemarketingListId
  = lens _rlsgRemarketingListId
      (\ s a -> s{_rlsgRemarketingListId = a})
      . _Coerce

-- | JSONP
rlsgCallback :: Lens' RemarketingListSharesGet (Maybe Text)
rlsgCallback
  = lens _rlsgCallback (\ s a -> s{_rlsgCallback = a})

instance GoogleRequest RemarketingListSharesGet where
        type Rs RemarketingListSharesGet =
             RemarketingListShare
        type Scopes RemarketingListSharesGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient RemarketingListSharesGet'{..}
          = go _rlsgProFileId _rlsgRemarketingListId _rlsgXgafv
              _rlsgUploadProtocol
              _rlsgAccessToken
              _rlsgUploadType
              _rlsgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy RemarketingListSharesGetResource)
                      mempty
