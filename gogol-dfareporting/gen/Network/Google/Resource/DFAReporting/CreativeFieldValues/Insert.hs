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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFieldValues.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new creative field value.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.creativeFieldValues.insert@.
module Network.Google.Resource.DFAReporting.CreativeFieldValues.Insert
    (
    -- * REST Resource
      CreativeFieldValuesInsertResource

    -- * Creating a Request
    , creativeFieldValuesInsert
    , CreativeFieldValuesInsert

    -- * Request Lenses
    , cfviCreativeFieldId
    , cfviProFileId
    , cfviPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeFieldValues.insert@ method which the
-- 'CreativeFieldValuesInsert' request conforms to.
type CreativeFieldValuesInsertResource =
     "dfareporting" :>
       "v2.7" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creativeFields" :>
               Capture "creativeFieldId" (Textual Int64) :>
                 "creativeFieldValues" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] CreativeFieldValue :>
                       Post '[JSON] CreativeFieldValue

-- | Inserts a new creative field value.
--
-- /See:/ 'creativeFieldValuesInsert' smart constructor.
data CreativeFieldValuesInsert = CreativeFieldValuesInsert'
    { _cfviCreativeFieldId :: !(Textual Int64)
    , _cfviProFileId       :: !(Textual Int64)
    , _cfviPayload         :: !CreativeFieldValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldValuesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfviCreativeFieldId'
--
-- * 'cfviProFileId'
--
-- * 'cfviPayload'
creativeFieldValuesInsert
    :: Int64 -- ^ 'cfviCreativeFieldId'
    -> Int64 -- ^ 'cfviProFileId'
    -> CreativeFieldValue -- ^ 'cfviPayload'
    -> CreativeFieldValuesInsert
creativeFieldValuesInsert pCfviCreativeFieldId_ pCfviProFileId_ pCfviPayload_ =
    CreativeFieldValuesInsert'
    { _cfviCreativeFieldId = _Coerce # pCfviCreativeFieldId_
    , _cfviProFileId = _Coerce # pCfviProFileId_
    , _cfviPayload = pCfviPayload_
    }

-- | Creative field ID for this creative field value.
cfviCreativeFieldId :: Lens' CreativeFieldValuesInsert Int64
cfviCreativeFieldId
  = lens _cfviCreativeFieldId
      (\ s a -> s{_cfviCreativeFieldId = a})
      . _Coerce

-- | User profile ID associated with this request.
cfviProFileId :: Lens' CreativeFieldValuesInsert Int64
cfviProFileId
  = lens _cfviProFileId
      (\ s a -> s{_cfviProFileId = a})
      . _Coerce

-- | Multipart request metadata.
cfviPayload :: Lens' CreativeFieldValuesInsert CreativeFieldValue
cfviPayload
  = lens _cfviPayload (\ s a -> s{_cfviPayload = a})

instance GoogleRequest CreativeFieldValuesInsert
         where
        type Rs CreativeFieldValuesInsert =
             CreativeFieldValue
        type Scopes CreativeFieldValuesInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CreativeFieldValuesInsert'{..}
          = go _cfviProFileId _cfviCreativeFieldId
              (Just AltJSON)
              _cfviPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeFieldValuesInsertResource)
                      mempty
