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
-- Module      : Network.Google.Resource.DFAReporting.RemarketingLists.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing remarketing list.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.remarketingLists.update@.
module Network.Google.Resource.DFAReporting.RemarketingLists.Update
    (
    -- * REST Resource
      RemarketingListsUpdateResource

    -- * Creating a Request
    , remarketingListsUpdate
    , RemarketingListsUpdate

    -- * Request Lenses
    , rluXgafv
    , rluUploadProtocol
    , rluAccessToken
    , rluUploadType
    , rluProFileId
    , rluPayload
    , rluCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.remarketingLists.update@ method which the
-- 'RemarketingListsUpdate' request conforms to.
type RemarketingListsUpdateResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "remarketingLists" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] RemarketingList :>
                             Put '[JSON] RemarketingList

-- | Updates an existing remarketing list.
--
-- /See:/ 'remarketingListsUpdate' smart constructor.
data RemarketingListsUpdate =
  RemarketingListsUpdate'
    { _rluXgafv :: !(Maybe Xgafv)
    , _rluUploadProtocol :: !(Maybe Text)
    , _rluAccessToken :: !(Maybe Text)
    , _rluUploadType :: !(Maybe Text)
    , _rluProFileId :: !(Textual Int64)
    , _rluPayload :: !RemarketingList
    , _rluCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemarketingListsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rluXgafv'
--
-- * 'rluUploadProtocol'
--
-- * 'rluAccessToken'
--
-- * 'rluUploadType'
--
-- * 'rluProFileId'
--
-- * 'rluPayload'
--
-- * 'rluCallback'
remarketingListsUpdate
    :: Int64 -- ^ 'rluProFileId'
    -> RemarketingList -- ^ 'rluPayload'
    -> RemarketingListsUpdate
remarketingListsUpdate pRluProFileId_ pRluPayload_ =
  RemarketingListsUpdate'
    { _rluXgafv = Nothing
    , _rluUploadProtocol = Nothing
    , _rluAccessToken = Nothing
    , _rluUploadType = Nothing
    , _rluProFileId = _Coerce # pRluProFileId_
    , _rluPayload = pRluPayload_
    , _rluCallback = Nothing
    }


-- | V1 error format.
rluXgafv :: Lens' RemarketingListsUpdate (Maybe Xgafv)
rluXgafv = lens _rluXgafv (\ s a -> s{_rluXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rluUploadProtocol :: Lens' RemarketingListsUpdate (Maybe Text)
rluUploadProtocol
  = lens _rluUploadProtocol
      (\ s a -> s{_rluUploadProtocol = a})

-- | OAuth access token.
rluAccessToken :: Lens' RemarketingListsUpdate (Maybe Text)
rluAccessToken
  = lens _rluAccessToken
      (\ s a -> s{_rluAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rluUploadType :: Lens' RemarketingListsUpdate (Maybe Text)
rluUploadType
  = lens _rluUploadType
      (\ s a -> s{_rluUploadType = a})

-- | User profile ID associated with this request.
rluProFileId :: Lens' RemarketingListsUpdate Int64
rluProFileId
  = lens _rluProFileId (\ s a -> s{_rluProFileId = a})
      . _Coerce

-- | Multipart request metadata.
rluPayload :: Lens' RemarketingListsUpdate RemarketingList
rluPayload
  = lens _rluPayload (\ s a -> s{_rluPayload = a})

-- | JSONP
rluCallback :: Lens' RemarketingListsUpdate (Maybe Text)
rluCallback
  = lens _rluCallback (\ s a -> s{_rluCallback = a})

instance GoogleRequest RemarketingListsUpdate where
        type Rs RemarketingListsUpdate = RemarketingList
        type Scopes RemarketingListsUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient RemarketingListsUpdate'{..}
          = go _rluProFileId _rluXgafv _rluUploadProtocol
              _rluAccessToken
              _rluUploadType
              _rluCallback
              (Just AltJSON)
              _rluPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy RemarketingListsUpdateResource)
                      mempty
