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
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.remarketingLists.get@.
module Network.Google.Resource.DFAReporting.RemarketingLists.Get
    (
    -- * REST Resource
      RemarketingListsGetResource

    -- * Creating a Request
    , remarketingListsGet
    , RemarketingListsGet

    -- * Request Lenses
    , rlgProFileId
    , rlgId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.remarketingLists.get@ method which the
-- 'RemarketingListsGet' request conforms to.
type RemarketingListsGetResource =
     "dfareporting" :>
       "v3.3" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "remarketingLists" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] RemarketingList

-- | Gets one remarketing list by ID.
--
-- /See:/ 'remarketingListsGet' smart constructor.
data RemarketingListsGet =
  RemarketingListsGet'
    { _rlgProFileId :: !(Textual Int64)
    , _rlgId        :: !(Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'RemarketingListsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlgProFileId'
--
-- * 'rlgId'
remarketingListsGet
    :: Int64 -- ^ 'rlgProFileId'
    -> Int64 -- ^ 'rlgId'
    -> RemarketingListsGet
remarketingListsGet pRlgProFileId_ pRlgId_ =
  RemarketingListsGet'
    {_rlgProFileId = _Coerce # pRlgProFileId_, _rlgId = _Coerce # pRlgId_}

-- | User profile ID associated with this request.
rlgProFileId :: Lens' RemarketingListsGet Int64
rlgProFileId
  = lens _rlgProFileId (\ s a -> s{_rlgProFileId = a})
      . _Coerce

-- | Remarketing list ID.
rlgId :: Lens' RemarketingListsGet Int64
rlgId
  = lens _rlgId (\ s a -> s{_rlgId = a}) . _Coerce

instance GoogleRequest RemarketingListsGet where
        type Rs RemarketingListsGet = RemarketingList
        type Scopes RemarketingListsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient RemarketingListsGet'{..}
          = go _rlgProFileId _rlgId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy RemarketingListsGetResource)
                      mempty
