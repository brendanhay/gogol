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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one targeting template by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.targetingTemplates.get@.
module Network.Google.Resource.DFAReporting.TargetingTemplates.Get
    (
    -- * REST Resource
      TargetingTemplatesGetResource

    -- * Creating a Request
    , targetingTemplatesGet
    , TargetingTemplatesGet

    -- * Request Lenses
    , ttgProFileId
    , ttgId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.targetingTemplates.get@ method which the
-- 'TargetingTemplatesGet' request conforms to.
type TargetingTemplatesGetResource =
     "dfareporting" :>
       "v2.6" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "targetingTemplates" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] TargetingTemplate

-- | Gets one targeting template by ID.
--
-- /See:/ 'targetingTemplatesGet' smart constructor.
data TargetingTemplatesGet = TargetingTemplatesGet'
    { _ttgProFileId :: !(Textual Int64)
    , _ttgId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetingTemplatesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttgProFileId'
--
-- * 'ttgId'
targetingTemplatesGet
    :: Int64 -- ^ 'ttgProFileId'
    -> Int64 -- ^ 'ttgId'
    -> TargetingTemplatesGet
targetingTemplatesGet pTtgProFileId_ pTtgId_ =
    TargetingTemplatesGet'
    { _ttgProFileId = _Coerce # pTtgProFileId_
    , _ttgId = _Coerce # pTtgId_
    }

-- | User profile ID associated with this request.
ttgProFileId :: Lens' TargetingTemplatesGet Int64
ttgProFileId
  = lens _ttgProFileId (\ s a -> s{_ttgProFileId = a})
      . _Coerce

-- | Targeting template ID.
ttgId :: Lens' TargetingTemplatesGet Int64
ttgId
  = lens _ttgId (\ s a -> s{_ttgId = a}) . _Coerce

instance GoogleRequest TargetingTemplatesGet where
        type Rs TargetingTemplatesGet = TargetingTemplate
        type Scopes TargetingTemplatesGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient TargetingTemplatesGet'{..}
          = go _ttgProFileId _ttgId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetingTemplatesGetResource)
                      mempty
