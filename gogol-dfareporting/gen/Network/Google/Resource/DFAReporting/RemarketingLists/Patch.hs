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
-- Module      : Network.Google.Resource.DFAReporting.RemarketingLists.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing remarketing list. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.remarketingLists.patch@.
module Network.Google.Resource.DFAReporting.RemarketingLists.Patch
    (
    -- * REST Resource
      RemarketingListsPatchResource

    -- * Creating a Request
    , remarketingListsPatch
    , RemarketingListsPatch

    -- * Request Lenses
    , rlpProFileId
    , rlpPayload
    , rlpId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.remarketingLists.patch@ method which the
-- 'RemarketingListsPatch' request conforms to.
type RemarketingListsPatchResource =
     "dfareporting" :>
       "v2.5beta1" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "remarketingLists" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] RemarketingList :>
                     Patch '[JSON] RemarketingList

-- | Updates an existing remarketing list. This method supports patch
-- semantics.
--
-- /See:/ 'remarketingListsPatch' smart constructor.
data RemarketingListsPatch = RemarketingListsPatch'
    { _rlpProFileId :: !(Textual Int64)
    , _rlpPayload   :: !RemarketingList
    , _rlpId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemarketingListsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlpProFileId'
--
-- * 'rlpPayload'
--
-- * 'rlpId'
remarketingListsPatch
    :: Int64 -- ^ 'rlpProFileId'
    -> RemarketingList -- ^ 'rlpPayload'
    -> Int64 -- ^ 'rlpId'
    -> RemarketingListsPatch
remarketingListsPatch pRlpProFileId_ pRlpPayload_ pRlpId_ =
    RemarketingListsPatch'
    { _rlpProFileId = _Coerce # pRlpProFileId_
    , _rlpPayload = pRlpPayload_
    , _rlpId = _Coerce # pRlpId_
    }

-- | User profile ID associated with this request.
rlpProFileId :: Lens' RemarketingListsPatch Int64
rlpProFileId
  = lens _rlpProFileId (\ s a -> s{_rlpProFileId = a})
      . _Coerce

-- | Multipart request metadata.
rlpPayload :: Lens' RemarketingListsPatch RemarketingList
rlpPayload
  = lens _rlpPayload (\ s a -> s{_rlpPayload = a})

-- | Remarketing list ID.
rlpId :: Lens' RemarketingListsPatch Int64
rlpId
  = lens _rlpId (\ s a -> s{_rlpId = a}) . _Coerce

instance GoogleRequest RemarketingListsPatch where
        type Rs RemarketingListsPatch = RemarketingList
        type Scopes RemarketingListsPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient RemarketingListsPatch'{..}
          = go _rlpProFileId (Just _rlpId) (Just AltJSON)
              _rlpPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy RemarketingListsPatchResource)
                      mempty
