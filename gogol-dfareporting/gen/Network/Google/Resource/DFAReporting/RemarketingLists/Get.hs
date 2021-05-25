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
-- Module      : Network.Google.Resource.DFAReporting.RemarketingLists.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one remarketing list by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.remarketingLists.get@.
module Network.Google.Resource.DFAReporting.RemarketingLists.Get
    (
    -- * REST Resource
      RemarketingListsGetResource

    -- * Creating a Request
    , remarketingListsGet
    , RemarketingListsGet

    -- * Request Lenses
    , rlgXgafv
    , rlgUploadProtocol
    , rlgAccessToken
    , rlgUploadType
    , rlgProFileId
    , rlgId
    , rlgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.remarketingLists.get@ method which the
-- 'RemarketingListsGet' request conforms to.
type RemarketingListsGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "remarketingLists" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] RemarketingList

-- | Gets one remarketing list by ID.
--
-- /See:/ 'remarketingListsGet' smart constructor.
data RemarketingListsGet =
  RemarketingListsGet'
    { _rlgXgafv :: !(Maybe Xgafv)
    , _rlgUploadProtocol :: !(Maybe Text)
    , _rlgAccessToken :: !(Maybe Text)
    , _rlgUploadType :: !(Maybe Text)
    , _rlgProFileId :: !(Textual Int64)
    , _rlgId :: !(Textual Int64)
    , _rlgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemarketingListsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlgXgafv'
--
-- * 'rlgUploadProtocol'
--
-- * 'rlgAccessToken'
--
-- * 'rlgUploadType'
--
-- * 'rlgProFileId'
--
-- * 'rlgId'
--
-- * 'rlgCallback'
remarketingListsGet
    :: Int64 -- ^ 'rlgProFileId'
    -> Int64 -- ^ 'rlgId'
    -> RemarketingListsGet
remarketingListsGet pRlgProFileId_ pRlgId_ =
  RemarketingListsGet'
    { _rlgXgafv = Nothing
    , _rlgUploadProtocol = Nothing
    , _rlgAccessToken = Nothing
    , _rlgUploadType = Nothing
    , _rlgProFileId = _Coerce # pRlgProFileId_
    , _rlgId = _Coerce # pRlgId_
    , _rlgCallback = Nothing
    }


-- | V1 error format.
rlgXgafv :: Lens' RemarketingListsGet (Maybe Xgafv)
rlgXgafv = lens _rlgXgafv (\ s a -> s{_rlgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rlgUploadProtocol :: Lens' RemarketingListsGet (Maybe Text)
rlgUploadProtocol
  = lens _rlgUploadProtocol
      (\ s a -> s{_rlgUploadProtocol = a})

-- | OAuth access token.
rlgAccessToken :: Lens' RemarketingListsGet (Maybe Text)
rlgAccessToken
  = lens _rlgAccessToken
      (\ s a -> s{_rlgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rlgUploadType :: Lens' RemarketingListsGet (Maybe Text)
rlgUploadType
  = lens _rlgUploadType
      (\ s a -> s{_rlgUploadType = a})

-- | User profile ID associated with this request.
rlgProFileId :: Lens' RemarketingListsGet Int64
rlgProFileId
  = lens _rlgProFileId (\ s a -> s{_rlgProFileId = a})
      . _Coerce

-- | Remarketing list ID.
rlgId :: Lens' RemarketingListsGet Int64
rlgId
  = lens _rlgId (\ s a -> s{_rlgId = a}) . _Coerce

-- | JSONP
rlgCallback :: Lens' RemarketingListsGet (Maybe Text)
rlgCallback
  = lens _rlgCallback (\ s a -> s{_rlgCallback = a})

instance GoogleRequest RemarketingListsGet where
        type Rs RemarketingListsGet = RemarketingList
        type Scopes RemarketingListsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient RemarketingListsGet'{..}
          = go _rlgProFileId _rlgId _rlgXgafv
              _rlgUploadProtocol
              _rlgAccessToken
              _rlgUploadType
              _rlgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy RemarketingListsGetResource)
                      mempty
