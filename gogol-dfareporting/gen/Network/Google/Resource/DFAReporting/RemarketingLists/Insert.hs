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
-- Module      : Network.Google.Resource.DFAReporting.RemarketingLists.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new remarketing list.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.remarketingLists.insert@.
module Network.Google.Resource.DFAReporting.RemarketingLists.Insert
    (
    -- * REST Resource
      RemarketingListsInsertResource

    -- * Creating a Request
    , remarketingListsInsert
    , RemarketingListsInsert

    -- * Request Lenses
    , rliXgafv
    , rliUploadProtocol
    , rliAccessToken
    , rliUploadType
    , rliProFileId
    , rliPayload
    , rliCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.remarketingLists.insert@ method which the
-- 'RemarketingListsInsert' request conforms to.
type RemarketingListsInsertResource =
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
                             Post '[JSON] RemarketingList

-- | Inserts a new remarketing list.
--
-- /See:/ 'remarketingListsInsert' smart constructor.
data RemarketingListsInsert =
  RemarketingListsInsert'
    { _rliXgafv :: !(Maybe Xgafv)
    , _rliUploadProtocol :: !(Maybe Text)
    , _rliAccessToken :: !(Maybe Text)
    , _rliUploadType :: !(Maybe Text)
    , _rliProFileId :: !(Textual Int64)
    , _rliPayload :: !RemarketingList
    , _rliCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemarketingListsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rliXgafv'
--
-- * 'rliUploadProtocol'
--
-- * 'rliAccessToken'
--
-- * 'rliUploadType'
--
-- * 'rliProFileId'
--
-- * 'rliPayload'
--
-- * 'rliCallback'
remarketingListsInsert
    :: Int64 -- ^ 'rliProFileId'
    -> RemarketingList -- ^ 'rliPayload'
    -> RemarketingListsInsert
remarketingListsInsert pRliProFileId_ pRliPayload_ =
  RemarketingListsInsert'
    { _rliXgafv = Nothing
    , _rliUploadProtocol = Nothing
    , _rliAccessToken = Nothing
    , _rliUploadType = Nothing
    , _rliProFileId = _Coerce # pRliProFileId_
    , _rliPayload = pRliPayload_
    , _rliCallback = Nothing
    }


-- | V1 error format.
rliXgafv :: Lens' RemarketingListsInsert (Maybe Xgafv)
rliXgafv = lens _rliXgafv (\ s a -> s{_rliXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rliUploadProtocol :: Lens' RemarketingListsInsert (Maybe Text)
rliUploadProtocol
  = lens _rliUploadProtocol
      (\ s a -> s{_rliUploadProtocol = a})

-- | OAuth access token.
rliAccessToken :: Lens' RemarketingListsInsert (Maybe Text)
rliAccessToken
  = lens _rliAccessToken
      (\ s a -> s{_rliAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rliUploadType :: Lens' RemarketingListsInsert (Maybe Text)
rliUploadType
  = lens _rliUploadType
      (\ s a -> s{_rliUploadType = a})

-- | User profile ID associated with this request.
rliProFileId :: Lens' RemarketingListsInsert Int64
rliProFileId
  = lens _rliProFileId (\ s a -> s{_rliProFileId = a})
      . _Coerce

-- | Multipart request metadata.
rliPayload :: Lens' RemarketingListsInsert RemarketingList
rliPayload
  = lens _rliPayload (\ s a -> s{_rliPayload = a})

-- | JSONP
rliCallback :: Lens' RemarketingListsInsert (Maybe Text)
rliCallback
  = lens _rliCallback (\ s a -> s{_rliCallback = a})

instance GoogleRequest RemarketingListsInsert where
        type Rs RemarketingListsInsert = RemarketingList
        type Scopes RemarketingListsInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient RemarketingListsInsert'{..}
          = go _rliProFileId _rliXgafv _rliUploadProtocol
              _rliAccessToken
              _rliUploadType
              _rliCallback
              (Just AltJSON)
              _rliPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy RemarketingListsInsertResource)
                      mempty
