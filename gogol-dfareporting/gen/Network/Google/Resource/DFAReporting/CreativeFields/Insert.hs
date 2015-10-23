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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFields.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new creative field.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.creativeFields.insert@.
module Network.Google.Resource.DFAReporting.CreativeFields.Insert
    (
    -- * REST Resource
      CreativeFieldsInsertResource

    -- * Creating a Request
    , creativeFieldsInsert
    , CreativeFieldsInsert

    -- * Request Lenses
    , cfiProFileId
    , cfiPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeFields.insert@ method which the
-- 'CreativeFieldsInsert' request conforms to.
type CreativeFieldsInsertResource =
     "dfareporting" :>
       "v2.2" :>
         "userprofiles" :>
           Capture "profileId" Int64 :>
             "creativeFields" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] CreativeField :>
                   Post '[JSON] CreativeField

-- | Inserts a new creative field.
--
-- /See:/ 'creativeFieldsInsert' smart constructor.
data CreativeFieldsInsert = CreativeFieldsInsert
    { _cfiProFileId :: !Int64
    , _cfiPayload   :: !CreativeField
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfiProFileId'
--
-- * 'cfiPayload'
creativeFieldsInsert
    :: Int64 -- ^ 'cfiProFileId'
    -> CreativeField -- ^ 'cfiPayload'
    -> CreativeFieldsInsert
creativeFieldsInsert pCfiProFileId_ pCfiPayload_ =
    CreativeFieldsInsert
    { _cfiProFileId = pCfiProFileId_
    , _cfiPayload = pCfiPayload_
    }

-- | User profile ID associated with this request.
cfiProFileId :: Lens' CreativeFieldsInsert Int64
cfiProFileId
  = lens _cfiProFileId (\ s a -> s{_cfiProFileId = a})

-- | Multipart request metadata.
cfiPayload :: Lens' CreativeFieldsInsert CreativeField
cfiPayload
  = lens _cfiPayload (\ s a -> s{_cfiPayload = a})

instance GoogleRequest CreativeFieldsInsert where
        type Rs CreativeFieldsInsert = CreativeField
        requestClient CreativeFieldsInsert{..}
          = go _cfiProFileId (Just AltJSON) _cfiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeFieldsInsertResource)
                      mempty
