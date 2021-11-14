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
-- Module      : Network.Google.Resource.DFAReporting.TargetableRemarketingLists.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one remarketing list by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.targetableRemarketingLists.get@.
module Network.Google.Resource.DFAReporting.TargetableRemarketingLists.Get
    (
    -- * REST Resource
      TargetableRemarketingListsGetResource

    -- * Creating a Request
    , targetableRemarketingListsGet
    , TargetableRemarketingListsGet

    -- * Request Lenses
    , trlgXgafv
    , trlgUploadProtocol
    , trlgAccessToken
    , trlgUploadType
    , trlgProFileId
    , trlgId
    , trlgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.targetableRemarketingLists.get@ method which the
-- 'TargetableRemarketingListsGet' request conforms to.
type TargetableRemarketingListsGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "targetableRemarketingLists" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] TargetableRemarketingList

-- | Gets one remarketing list by ID.
--
-- /See:/ 'targetableRemarketingListsGet' smart constructor.
data TargetableRemarketingListsGet =
  TargetableRemarketingListsGet'
    { _trlgXgafv :: !(Maybe Xgafv)
    , _trlgUploadProtocol :: !(Maybe Text)
    , _trlgAccessToken :: !(Maybe Text)
    , _trlgUploadType :: !(Maybe Text)
    , _trlgProFileId :: !(Textual Int64)
    , _trlgId :: !(Textual Int64)
    , _trlgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetableRemarketingListsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trlgXgafv'
--
-- * 'trlgUploadProtocol'
--
-- * 'trlgAccessToken'
--
-- * 'trlgUploadType'
--
-- * 'trlgProFileId'
--
-- * 'trlgId'
--
-- * 'trlgCallback'
targetableRemarketingListsGet
    :: Int64 -- ^ 'trlgProFileId'
    -> Int64 -- ^ 'trlgId'
    -> TargetableRemarketingListsGet
targetableRemarketingListsGet pTrlgProFileId_ pTrlgId_ =
  TargetableRemarketingListsGet'
    { _trlgXgafv = Nothing
    , _trlgUploadProtocol = Nothing
    , _trlgAccessToken = Nothing
    , _trlgUploadType = Nothing
    , _trlgProFileId = _Coerce # pTrlgProFileId_
    , _trlgId = _Coerce # pTrlgId_
    , _trlgCallback = Nothing
    }


-- | V1 error format.
trlgXgafv :: Lens' TargetableRemarketingListsGet (Maybe Xgafv)
trlgXgafv
  = lens _trlgXgafv (\ s a -> s{_trlgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
trlgUploadProtocol :: Lens' TargetableRemarketingListsGet (Maybe Text)
trlgUploadProtocol
  = lens _trlgUploadProtocol
      (\ s a -> s{_trlgUploadProtocol = a})

-- | OAuth access token.
trlgAccessToken :: Lens' TargetableRemarketingListsGet (Maybe Text)
trlgAccessToken
  = lens _trlgAccessToken
      (\ s a -> s{_trlgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
trlgUploadType :: Lens' TargetableRemarketingListsGet (Maybe Text)
trlgUploadType
  = lens _trlgUploadType
      (\ s a -> s{_trlgUploadType = a})

-- | User profile ID associated with this request.
trlgProFileId :: Lens' TargetableRemarketingListsGet Int64
trlgProFileId
  = lens _trlgProFileId
      (\ s a -> s{_trlgProFileId = a})
      . _Coerce

-- | Remarketing list ID.
trlgId :: Lens' TargetableRemarketingListsGet Int64
trlgId
  = lens _trlgId (\ s a -> s{_trlgId = a}) . _Coerce

-- | JSONP
trlgCallback :: Lens' TargetableRemarketingListsGet (Maybe Text)
trlgCallback
  = lens _trlgCallback (\ s a -> s{_trlgCallback = a})

instance GoogleRequest TargetableRemarketingListsGet
         where
        type Rs TargetableRemarketingListsGet =
             TargetableRemarketingList
        type Scopes TargetableRemarketingListsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient TargetableRemarketingListsGet'{..}
          = go _trlgProFileId _trlgId _trlgXgafv
              _trlgUploadProtocol
              _trlgAccessToken
              _trlgUploadType
              _trlgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy TargetableRemarketingListsGetResource)
                      mempty
