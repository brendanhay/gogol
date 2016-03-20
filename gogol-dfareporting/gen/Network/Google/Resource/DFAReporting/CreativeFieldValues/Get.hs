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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFieldValues.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one creative field value by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.creativeFieldValues.get@.
module Network.Google.Resource.DFAReporting.CreativeFieldValues.Get
    (
    -- * REST Resource
      CreativeFieldValuesGetResource

    -- * Creating a Request
    , creativeFieldValuesGet
    , CreativeFieldValuesGet

    -- * Request Lenses
    , cfvgCreativeFieldId
    , cfvgProFileId
    , cfvgId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeFieldValues.get@ method which the
-- 'CreativeFieldValuesGet' request conforms to.
type CreativeFieldValuesGetResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creativeFields" :>
               Capture "creativeFieldId" (Textual Int64) :>
                 "creativeFieldValues" :>
                   Capture "id" (Textual Int64) :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] CreativeFieldValue

-- | Gets one creative field value by ID.
--
-- /See:/ 'creativeFieldValuesGet' smart constructor.
data CreativeFieldValuesGet = CreativeFieldValuesGet
    { _cfvgCreativeFieldId :: !(Textual Int64)
    , _cfvgProFileId       :: !(Textual Int64)
    , _cfvgId              :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldValuesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfvgCreativeFieldId'
--
-- * 'cfvgProFileId'
--
-- * 'cfvgId'
creativeFieldValuesGet
    :: Int64 -- ^ 'cfvgCreativeFieldId'
    -> Int64 -- ^ 'cfvgProFileId'
    -> Int64 -- ^ 'cfvgId'
    -> CreativeFieldValuesGet
creativeFieldValuesGet pCfvgCreativeFieldId_ pCfvgProFileId_ pCfvgId_ =
    CreativeFieldValuesGet
    { _cfvgCreativeFieldId = _Coerce # pCfvgCreativeFieldId_
    , _cfvgProFileId = _Coerce # pCfvgProFileId_
    , _cfvgId = _Coerce # pCfvgId_
    }

-- | Creative field ID for this creative field value.
cfvgCreativeFieldId :: Lens' CreativeFieldValuesGet Int64
cfvgCreativeFieldId
  = lens _cfvgCreativeFieldId
      (\ s a -> s{_cfvgCreativeFieldId = a})
      . _Coerce

-- | User profile ID associated with this request.
cfvgProFileId :: Lens' CreativeFieldValuesGet Int64
cfvgProFileId
  = lens _cfvgProFileId
      (\ s a -> s{_cfvgProFileId = a})
      . _Coerce

-- | Creative Field Value ID
cfvgId :: Lens' CreativeFieldValuesGet Int64
cfvgId
  = lens _cfvgId (\ s a -> s{_cfvgId = a}) . _Coerce

instance GoogleRequest CreativeFieldValuesGet where
        type Rs CreativeFieldValuesGet = CreativeFieldValue
        requestClient CreativeFieldValuesGet{..}
          = go _cfvgProFileId _cfvgCreativeFieldId _cfvgId
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeFieldValuesGetResource)
                      mempty
